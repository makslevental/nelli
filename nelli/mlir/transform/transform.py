from typing import (
    Union,
    Optional,
)

from .common import ShareForallOperandsOp
from .._mlir._mlir_libs._mlir.ir import ArrayAttr, StringAttr
from .._mlir.dialects._ods_common import get_op_result_or_value
from ..utils import doublewrap, get_dense_int64_array_attr, extract_wrapped

# noinspection PyUnresolvedReferences
from .._mlir._mlir_libs._nelli_mlir import TensorValue
from .._mlir.dialects import pdl
from .._mlir.dialects import transform as transform_dialect
from .._mlir.dialects.transform import (
    loop as loop_ext,
    structured as structured_ext,
)
from . import common as common_ext
from .._mlir.ir import Type, Operation, Value, InsertionPoint
from .gpu import MapForeachToBlocks, MapNestedForeachToThreads


@doublewrap
def sequence(
    f,
    target: Optional[Union[Operation, Value, Type, str]] = pdl.OperationType.get(),
    target_tag=None,
):
    if isinstance(target, str):
        target = transform_dialect.OperationType.get(target)

    sequence = transform_dialect.SequenceOp(
        transform_dialect.FailurePropagationMode.PROPAGATE, [], target
    )
    # this is a misnomer - it's not about targeting a particular op
    # but about picking which transform sequence runs using
    # transform_dialect_interpreter(debug_transform_root_tag="")
    if target_tag is None:
        target_tag = f.__name__
    sequence.operation.attributes["transform.target_tag"] = StringAttr.get(target_tag)
    with InsertionPoint(sequence.body):
        f(sequence.bodyTarget, *sequence.bodyExtraArgs)
        transform_dialect.YieldOp()


@doublewrap
def lazy_sequence(*args, **kwargs):
    unwrapped_sequence = extract_wrapped(sequence)

    def wrapped():
        unwrapped_sequence(*args, **kwargs)

    return wrapped


def match_name(target, name):
    transform_operation_type = transform_dialect.OperationType.get(name)
    return structured_ext.MatchOp(
        transform_operation_type,
        get_op_result_or_value(target),
        ops=ArrayAttr.get(list(map(lambda s: StringAttr.get(s), [name]))),
    ).result


def match(target, names):
    return structured_ext.MatchOp.match_op_names(target, names).result


def get_parent_for_loop(target, num_loops=1):
    return loop_ext.GetParentForOp(
        transform_dialect.OperationType.get("scf.for"), target, num_loops=num_loops
    ).result


def unroll(target, factor):
    loop_ext.LoopUnrollOp(target, factor=factor)


def tile_to_scf_for(target, sizes: list[int]):
    return structured_ext.TileToScfForOp(
        target.type,
        [target.type] * len(sizes),
        target,
        [],
        static_sizes=sizes,
    )


def tile_linalg_to_scf_for(target, sizes: list[int]):
    return structured_ext.TileOp(
        transform_dialect.OperationType.get("scf.for"),
        target,
        sizes=sizes,
    )


def tile_to_scf_forall(target, sizes: list[int], mapping=None):
    return structured_ext.TileToForallOp(
        target.type,
        target.type,
        target,
        num_threads=[],
        tile_sizes=[],
        static_tile_sizes=get_dense_int64_array_attr(sizes),
        mapping=mapping,
    )


def map_nested_foreach_to_threads(target, block_dims: list[int]):
    return MapNestedForeachToThreads(target.type, target, blockDim=block_dims).result


def map_foreach_to_blocks(target, grid_dims: list[int], generate_gpu_launch=True):
    return MapForeachToBlocks(
        target.type, target, gridDim=grid_dims, generate_gpu_launch=generate_gpu_launch
    ).result


def pack_greedily(
    target, gemm_packed_sizes: list[int], gemm_inner_dims_order: list[int]
):
    return structured_ext.PackGreedilyOp(
        transform_dialect.OperationType.get("linalg.generic"),
        target,
        [],
        static_gemm_packed_sizes=get_dense_int64_array_attr(gemm_packed_sizes),
        gemm_inner_dims_order=get_dense_int64_array_attr(gemm_inner_dims_order),
    )


def lower_pack(target):
    return structured_ext.LowerPackOp(
        transform_dialect.OperationType.get("tensor.pad"),
        transform_dialect.OperationType.get("tensor.expand_shape"),
        transform_dialect.OperationType.get("linalg.transpose"),
        target,
    )


def lower_unpack(target):
    return structured_ext.LowerUnPackOp(
        transform_dialect.OperationType.get("tensor.empty"),
        transform_dialect.OperationType.get("linalg.transpose"),
        transform_dialect.OperationType.get("tensor.collapse_shape"),
        transform_dialect.OperationType.get("tensor.extract_slice"),
        target,
    )


def apply_patterns(
    target,
    additional_patterns=None,
    bubble_collapse=None,
    bubble_expand=None,
    bubble_pack_un_pack=None,
    canonicalization=None,
    cse=None,
    erase_unnecessary_tensor_operands=None,
    expand_memref_strided_metadata=None,
    fold_memref_aliases=None,
    fold_reassociative_reshapes=None,
    fold_tensor_empty_extract=None,
    licm=None,
    linalg_elementwise_greedy_fusion=None,
    lower_transfer_op_permutations=None,
    lower_vector_masks=None,
    rank_reducing_linalg=None,
    rank_reducing_linalg_via_reshapes=None,
    rank_reducing_vector=None,
    swap_padding_elide_conditional=None,
    swapping_patterns=None,
    tiling_canonicalization=None,
    unroll_vectors_gpu_mma_sync=None,
    unroll_vectors_gpu_wmma=None,
):
    return common_ext.ApplyPatternsOp(
        pdl.OperationType.get(),
        target,
        additional_patterns=additional_patterns,
        bubble_collapse=bubble_collapse,
        bubble_expand=bubble_expand,
        bubble_pack_un_pack=bubble_pack_un_pack,
        canonicalization=canonicalization,
        cse=cse,
        erase_unnecessary_tensor_operands=erase_unnecessary_tensor_operands,
        expand_memref_strided_metadata=expand_memref_strided_metadata,
        fold_memref_aliases=fold_memref_aliases,
        fold_reassociative_reshapes=fold_reassociative_reshapes,
        fold_tensor_empty_extract=fold_tensor_empty_extract,
        licm=licm,
        linalg_elementwise_greedy_fusion=linalg_elementwise_greedy_fusion,
        lower_transfer_op_permutations=lower_transfer_op_permutations,
        lower_vector_masks=lower_vector_masks,
        rank_reducing_linalg=rank_reducing_linalg,
        rank_reducing_linalg_via_reshapes=rank_reducing_linalg_via_reshapes,
        rank_reducing_vector=rank_reducing_vector,
        swap_padding_elide_conditional=swap_padding_elide_conditional,
        swapping_patterns=swapping_patterns,
        tiling_canonicalization=tiling_canonicalization,
        unroll_vectors_gpu_mma_sync=unroll_vectors_gpu_mma_sync,
        unroll_vectors_gpu_wmma=unroll_vectors_gpu_wmma,
    )


def cast(output, input):
    return transform_dialect.CastOp(
        transform_dialect.OperationType.get(output), input
    ).result


def share_forall_operands(forall_op, share_operands: list[int]):
    return ShareForallOperandsOp(
        transform_dialect.OperationType.get("scf.forall"),
        forall_op,
        share_operands=share_operands,
    ).result
