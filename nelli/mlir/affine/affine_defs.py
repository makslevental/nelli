from typing import Optional

from ...mlir._mlir import ir
from ...mlir.affine import Apply
from ...poly.sympy_ import SymPyVisitor


class AffineBuildState:
    def __init__(
        self,
        *,
        global_state: "AffineBuildState" = None,
        allow_new_symbols: bool = True,
        allow_new_dims: bool = True,
    ):
        if not global_state:
            self.all_symbols = dict()
            self.all_dims = dict()
        else:
            # Alias the global dict.
            self.all_symbols = global_state.all_symbols
            self.all_dims = global_state.all_dims

        # Map of symbols and dims in the current build.
        self.local_symbols = dict()
        self.local_dims = dict()
        self.allow_new_symbols = allow_new_symbols
        self.allow_new_dims = allow_new_dims

    def get_dim(self, dimname: str) -> int:
        """Gets the dim position given a name."""
        pos = self.all_dims.get(dimname)
        if pos is None:
            if not self.allow_new_dims:
                raise ValueError(
                    f"New dimensions not allowed in the current affine expression: "
                    f"Requested '{dimname}', Availble: {self.all_dims}"
                )
            pos = len(self.all_dims)
            self.all_dims[dimname] = pos
        self.local_dims[dimname] = pos
        return pos

    def get_symbol(self, symname: str) -> int:
        """Geta a symbol position given a name."""
        pos = self.all_symbols.get(symname)
        if pos is None:
            if not self.allow_new_symbols:
                raise ValueError(
                    f"New symbols not allowed in the current affine expression: "
                    f"Requested '{symname}', Availble: {self.all_symbols}"
                )
            pos = len(self.all_symbols)
            self.all_symbols[symname] = pos
        self.local_symbols[symname] = pos
        return pos

    @property
    def local_dim_count(self) -> int:
        return len(self.local_dims)

    @property
    def local_symbol_count(self) -> int:
        return len(self.local_symbols)

    @property
    def dim_count(self) -> int:
        return len(self.all_dims)

    @property
    def symbol_count(self) -> int:
        return len(self.all_symbols)

    def __repr__(self):
        lines = [f"AffineBuildState<"]
        lines.append(f"  symbols={self.local_symbols}")
        lines.append(f"  dims={self.local_dims}>")
        return "\n".join(lines)


def apply(sym_expr: "AffineExprDef", operands):
    s = AffineBuildState()
    expr = sym_expr.build(s)
    map1 = ir.AffineMap.get(
        dim_count=s.dim_count, symbol_count=s.symbol_count, exprs=[expr]
    )
    compressed_maps = ir.AffineMap.compress_unused_symbols([map1], ir.Context.current)
    aff_map_attr = ir.AffineMapAttr.get(compressed_maps[0])
    aff = Apply(aff_map_attr, operands)
    return aff.result


class AffineExprDef:
    def build(self, state: Optional[AffineBuildState] = None) -> ir.AffineExpr:
        state = AffineBuildState() if state is None else state
        expr = self._create(state)
        return expr

    def _create(self, state: AffineBuildState) -> ir.AffineExpr:
        raise NotImplementedError()

    @staticmethod
    def coerce_from(py_value):
        if isinstance(py_value, int):
            return AffineConstantExpr(py_value)
        assert isinstance(py_value, AffineExprDef)
        return py_value

    def visit_affine_exprs(self, callback):
        """Visits all AffineExprDefs including self."""
        callback(self)

    def __add__(lhs, rhs):
        rhs = AffineExprDef.coerce_from(rhs)
        return AffineBinaryExprDef(ir.AffineAddExpr, lhs, rhs)

    def __radd__(self, lhs):
        return self + lhs

    def __sub__(lhs, rhs):
        rhs = rhs * -1
        rhs = AffineExprDef.coerce_from(rhs)
        return AffineBinaryExprDef(ir.AffineExpr, lhs, rhs)

    def __mul__(lhs, rhs):
        rhs = AffineExprDef.coerce_from(rhs)
        return AffineBinaryExprDef(ir.AffineMulExpr, lhs, rhs)

    def __rmul__(self, lhs):
        return self * lhs

    def __mod__(lhs, rhs):
        rhs = AffineExprDef.coerce_from(rhs)
        return AffineBinaryExprDef(ir.AffineModExpr, lhs, rhs)

    def __floordiv__(lhs, rhs):
        rhs = AffineExprDef.coerce_from(rhs)
        return AffineBinaryExprDef(ir.AffineFloorDivExpr, lhs, rhs)

    def __truediv__(lhs, rhs):
        # TODO: Not really a ceil div - taking liberties for the DSL.
        rhs = AffineExprDef.coerce_from(rhs)
        return AffineBinaryExprDef(ir.AffineCeilDivExpr, lhs, rhs)

    def __matmul__(self, other):
        if not isinstance(other, (tuple, list)):
            other = [other]
        return apply(self, other)


class AffineConstantExpr(AffineExprDef):
    def __init__(self, value: int):
        assert isinstance(value, int)
        self.value = value

    def _create(self, state: AffineBuildState) -> ir.AffineExpr:
        return ir.AffineConstantExpr.get(self.value)

    def __repr__(self):
        return f"Const({self.value})"


class AffineBinaryExprDef(AffineExprDef):
    def __init__(self, ir_ctor, lhs: AffineExprDef, rhs: AffineExprDef):
        self.ir_ctor = ir_ctor
        self.lhs = lhs
        self.rhs = rhs

    def _create(self, state: AffineBuildState) -> ir.AffineExpr:
        return self.ir_ctor.get(self.lhs._create(state), self.rhs._create(state))

    def visit_affine_exprs(self, callback):
        super().visit_affine_exprs(callback)
        self.lhs.visit_affine_exprs(callback)
        self.rhs.visit_affine_exprs(callback)

    def __repr__(self):
        return f"{self.ir_ctor.__name__}({repr(self.lhs)}, {repr(self.rhs)})"


class DimDef(AffineExprDef):
    ALL_DIMS = dict()

    def __new__(cls, dimname: str):
        existing = cls.ALL_DIMS.get(dimname)
        if existing is not None:
            return existing
        new = super().__new__(cls)
        new.dimname = dimname
        cls.ALL_DIMS[dimname] = new
        return new

    def __repr__(self):
        return f"Dim({self.dimname})"

    def _create(self, state: AffineBuildState) -> ir.AffineExpr:
        pos = state.get_dim(self.dimname)
        return ir.AffineDimExpr.get(position=pos)

    @classmethod
    def create_expando(cls):
        """Create an expando class that creates unique symbols based on attr access."""

        class ExpandoDims:
            def __getattr__(self, n):
                return cls(n)

        return ExpandoDims()


class SymbolDef(AffineExprDef):
    ALL_SYMBOLS = dict()

    def __new__(cls, symname: str):
        existing = cls.ALL_SYMBOLS.get(symname)
        if existing is not None:
            return existing
        new = super().__new__(cls)
        new.symname = symname
        cls.ALL_SYMBOLS[symname] = new
        return new

    def __repr__(self):
        return f"Symbol({self.symname})"

    def _create(self, state: AffineBuildState) -> ir.AffineExpr:
        pos = state.get_symbol(self.symname)
        return ir.AffineSymbolExpr.get(position=pos)

    @classmethod
    def create_expando(cls):
        class ExpandoSymbols:
            def __getattr__(self, n):
                return cls(n)

        return ExpandoSymbols()


from sympy import Expr


def __matmul__(self, other):
    def symbol_factory(e):
        if e.startswith("s"):
            return SymbolDef(e)
        elif e.startswith("d"):
            return DimDef(e)
        else:
            raise NotImplementedError(f"unexpected {e}")

    aff_map = SymPyVisitor(symbol_factory=symbol_factory).visit(self)
    return aff_map @ other


Expr.__matmul__ = __matmul__
