from sympy import ordered
from sympy.core import (
    Symbol,
    Equality,
    LessThan,
    StrictLessThan,
    GreaterThan,
    StrictGreaterThan,
)


class SymPyVisitor:
    def __init__(self, symbol_factory):
        self.symbol_factory = symbol_factory

    def visit_Symbol(self, e):
        # self.var_map[e.name] = self.symbol_factory(e.name)
        return self.symbol_factory(e.name)

    def visit_Integer(self, e):
        assert e.is_Integer, f"unexpected {e=}"
        name = str(e)
        # self.var_map[name] = int(name)
        return int(name)

    def visit_Add(self, e):
        ls = list(ordered(e.args))
        lhs = self.visit(ls[0])
        for child in ls[1:]:
            lhs += self.visit(child)
        return lhs
        # self.var_map[str(e)] = (
        #     # reduce(lambda acc, v: acc * self.var_map[str(v)], ls)
        #     reduce(callback, ls[1:], self.var_map[str(ls[0])])
        # )

    def visit_Mul(self, e):
        ls = list(ordered(e.args))
        lhs = self.visit(ls[0])
        for child in ls[1:]:
            lhs *= self.visit(child)
        # self.var_map[str(e)] = (
        #     # reduce(lambda acc, v: acc * self.var_map[str(v)], ls)
        #     reduce(callback, ls[1:], self.var_map[str(ls[0])])
        # )
        return lhs

    def visit_Relational(self, e):
        lhs = self.visit(e.lhs)
        rhs = self.visit(e.rhs)
        rv = {
            Equality: lambda: lhs == rhs,
            LessThan: lambda: lhs <= rhs,
            StrictLessThan: lambda: lhs < rhs,
            GreaterThan: lambda: lhs >= rhs,
            StrictGreaterThan: lambda: lhs > rhs,
        }[type(e)]()
        return rv

    def visit(self, e):
        if e.is_Number:
            return self.visit_Integer(e)
        elif hasattr(self, f"visit_{e.__class__.__name__}"):
            return getattr(self, f"visit_{e.__class__.__name__}")(e)
        elif isinstance(
                e,
                (Equality, LessThan, StrictLessThan, GreaterThan, StrictGreaterThan),
        ):
            return self.visit_Relational(e)
        else:
            raise NotImplementedError(
                f"unexpected sympy expr {e.__class__.__name__} {e=}"
            )


s0 = Symbol("s0")
s1 = Symbol("s1")
s2 = Symbol("s2")

d0 = Symbol("d0")
d1 = Symbol("d1")
d2 = Symbol("d2")
