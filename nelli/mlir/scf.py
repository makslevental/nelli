from ._mlir.dialects._ods_common import get_op_results_or_values
from .arith import ArithValue, constant
from ..mlir._mlir.dialects import scf
from ..mlir._mlir.ir import InsertionPoint, IndexType


class IfOp(scf.IfOp):
    def __init__(self, cond, *, loc=None, ip=None):
        super().__init__(cond, hasElse=False, loc=None, ip=None)

    def add_else(self):
        self.regions[1].blocks.append(*[])
        return self.else_block


_current_if_op: list[IfOp] = []
_if_ip: InsertionPoint = None


def scf_if(cond: ArithValue):
    assert isinstance(cond, ArithValue)
    global _if_ip, _current_if_op
    if_op = IfOp(cond)
    _current_if_op.append(if_op)
    _if_ip = InsertionPoint(if_op.then_block)
    _if_ip.__enter__()
    return True


def scf_else():
    global _if_ip, _current_if_op
    _if_ip = InsertionPoint(_current_if_op[-1].add_else())
    _if_ip.__enter__()
    return True


def scf_endif_branch():
    global _if_ip
    scf.YieldOp([])
    _if_ip.__exit__(None, None, None)


def scf_endif():
    global _current_if_op
    _current_if_op.pop()


_for_ip = None


def scf_range(start, stop=None, step=1):
    global _for_ip
    if stop is None:
        stop = start
        start = 0

    if isinstance(start, int):
        start = constant(start, index=True)
    if isinstance(stop, int):
        stop = constant(stop, index=True)
    if isinstance(step, int):
        step = constant(step, index=True)
    for_op = scf.ForOp(start, stop, step)
    _for_ip = InsertionPoint(for_op.body)
    _for_ip.__enter__()
    return [ArithValue(for_op.induction_variable)]


def end_for():
    scf.YieldOp([])
    global _for_ip
    _for_ip.__exit__(None, None, None)


# // CHECK: _ODS_OPERAND_SEGMENTS = [-1,1,0,]
# def AttrSizedOperandsOp : TestOp<"attr_sized_operands",
#                                  [AttrSizedOperandSegments]> {
#   // CHECK: def __init__(self, variadic1, non_variadic, *, variadic2=None, loc=None, ip=None):
#   // CHECK:   operands = []
#   // CHECK:   results = []
#   // CHECK:   attributes = {}
#   // CHECK:   regions = None
#   // CHECK:   operands.append(_get_op_results_or_values(variadic1))
#   // CHECK:   operands.append(_get_op_result_or_value(non_variadic))
#   // CHECK:   operands.append(_get_op_result_or_value(variadic2) if variadic2 is not None else None)
#   // CHECK:   _ods_successors = None
#   // CHECK:   super().__init__(self.build_generic(
#   // CHECK:     attributes=attributes, results=results, operands=operands,
#   // CHECK:     successors=_ods_successors, regions=regions, loc=loc, ip=ip))


class ParallelOp(scf.ParallelOp):
    def __init__(
        self,
        lower_bounds,
        upper_bounds,
        steps,
        # iter_args: Optional[Union[Operation, OpView, Sequence[Value]]] = None,
        *,
        loc=None,
        ip=None,
    ):
        assert len(lower_bounds) == len(upper_bounds) == len(steps)
        inits = []
        results = []
        # error: 'scf.parallel' op expects the same number of induction variables: 1 as bound and step values: 2
        iv_types = [IndexType.get()] * len(lower_bounds)
        super().__init__(
            self.build_generic(
                regions=1,
                results=results,
                operands=[
                    get_op_results_or_values(o)
                    for o in [lower_bounds, upper_bounds, steps, inits]
                ],
                loc=loc,
                ip=ip,
            )
        )
        self.regions[0].blocks.append(*iv_types, *results)

    @property
    def body(self):
        """Returns the body (block) of the loop."""
        return self.regions[0].blocks[0]

    @property
    def induction_variables(self):
        """Returns the induction variable of the loop."""
        return self.body.arguments


_parfor_ip = None


def par_range(starts, stops, steps=None):
    global _parfor_ip
    assert len(starts) == len(stops)
    if steps is None:
        steps = [1] * len(starts)
    for args in [starts, stops, steps]:
        for i, a in enumerate(args):
            if isinstance(a, int):
                args[i] = constant(a, index=True)
    for_op = ParallelOp(starts, stops, steps)
    _parfor_ip = InsertionPoint(for_op.body)
    _parfor_ip.__enter__()
    return [
        tuple(
            ArithValue(a) for a in get_op_results_or_values(for_op.induction_variables)
        )
    ]


def end_parfor():
    scf.YieldOp([])
    global _parfor_ip
    _parfor_ip.__exit__(None, None, None)
