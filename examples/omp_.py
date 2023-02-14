from loopy.loopy_mlir.dialects import _arith_ops_gen as arith_dialect
from loopy.loopy_mlir.execution_engine import ExecutionEngine
from loopy.loopy_mlir.ir import InsertionPoint
from loopy.mlir import I32, Index
from loopy.mlir.arith import constant
from loopy.mlir.func import mlir_func
from loopy.mlir.memref import MemRefValue as MemRef
from loopy.mlir.openmp._omp_ops_gen import TerminatorOp, YieldOp
from loopy.mlir.openmp.omp import ParallelOp, WsLoopOp
from loopy.mlir.refbackend import LLVMJITBackend
from loopy.utils import mlir_mod_ctx

with mlir_mod_ctx() as module:

    @mlir_func(rewrite_ast_=False, rewrite_bytecode_=False, affine_memref=False)
    def ws_loop(one: I32, ten: I32, two: I32, mem: MemRef[12, I32]):
        p = ParallelOp(num_threads=12)
        with InsertionPoint.at_block_begin(p.body):
            ws_loop = WsLoopOp([one], [ten], [two])
            with InsertionPoint.at_block_begin(ws_loop.body):
                two = constant(2, type=I32)
                idx = arith_dialect.IndexCastOp(Index, ws_loop.induction_variable)
                mem[idx] = two
                YieldOp([])
            TerminatorOp()


backend = LLVMJITBackend()
module = backend.compile(module, kernel_name="ws_loop")
print(module)

execution_engine = ExecutionEngine(
    module,
    shared_libs=["/Users/mlevental/dev_projects/loopy/llvm_install/lib/libgomp.dylib"],
)
execution_engine.invoke("ws_loop")
