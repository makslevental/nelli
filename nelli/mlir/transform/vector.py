from .._mlir.dialects._ods_common import (
    _cext as _ods_cext,
    get_default_loc_context,
)
from .._mlir.dialects._ods_common import (
    extend_opview_class,
    get_op_result_or_value,
    get_op_results_or_values,
)
from .._mlir.dialects._transform_ops_gen import _Dialect

_ods_ir = _ods_cext.ir

_ods_ext_module = None

import builtins


@_ods_cext.register_operation(_Dialect)
@extend_opview_class(_ods_ext_module)
class LowerVectorsOp(_ods_ir.OpView):
    OPERATION_NAME = "transform.vector.lower_vectors"

    _ODS_REGIONS = (0, True)

    def __init__(
        self,
        results_,
        target,
        *,
        contraction_lowering=None,
        multireduction_lowering=None,
        split_transfers=None,
        transpose_lowering=None,
        transpose_avx2_lowering=None,
        unroll_vector_transfers=None,
        loc=None,
        ip=None,
    ):
        operands = []
        results = []
        attributes = {}
        regions = None
        operands.append(get_op_result_or_value(target))
        _ods_context = get_default_loc_context(loc)
        if contraction_lowering is not None:
            attributes["contraction_lowering"] = (
                contraction_lowering
                if (
                    issubclass(type(contraction_lowering), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("VectorContractLoweringAttr")
                )
                else _ods_ir.AttrBuilder.get("VectorContractLoweringAttr")(
                    contraction_lowering, context=_ods_context
                )
            )
        if multireduction_lowering is not None:
            attributes["multireduction_lowering"] = (
                multireduction_lowering
                if (
                    issubclass(type(multireduction_lowering), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains(
                        "VectorMultiReductionLoweringAttr"
                    )
                )
                else _ods_ir.AttrBuilder.get("VectorMultiReductionLoweringAttr")(
                    multireduction_lowering, context=_ods_context
                )
            )
        if split_transfers is not None:
            attributes["split_transfers"] = (
                split_transfers
                if (
                    issubclass(type(split_transfers), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("VectorTransferSplitAttr")
                )
                else _ods_ir.AttrBuilder.get("VectorTransferSplitAttr")(
                    split_transfers, context=_ods_context
                )
            )
        if transpose_lowering is not None:
            attributes["transpose_lowering"] = (
                transpose_lowering
                if (
                    issubclass(type(transpose_lowering), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("VectorTransposeLoweringAttr")
                )
                else _ods_ir.AttrBuilder.get("VectorTransposeLoweringAttr")(
                    transpose_lowering, context=_ods_context
                )
            )
        if transpose_avx2_lowering is not None:
            attributes["transpose_avx2_lowering"] = (
                transpose_avx2_lowering
                if (
                    issubclass(type(transpose_avx2_lowering), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("BoolAttr")
                )
                else _ods_ir.AttrBuilder.get("BoolAttr")(
                    transpose_avx2_lowering, context=_ods_context
                )
            )
        if unroll_vector_transfers is not None:
            attributes["unroll_vector_transfers"] = (
                unroll_vector_transfers
                if (
                    issubclass(type(unroll_vector_transfers), _ods_ir.Attribute)
                    or not _ods_ir.AttrBuilder.contains("BoolAttr")
                )
                else _ods_ir.AttrBuilder.get("BoolAttr")(
                    unroll_vector_transfers, context=_ods_context
                )
            )
        results.append(results_)
        _ods_successors = None
        super().__init__(
            self.build_generic(
                attributes=attributes,
                results=results,
                operands=operands,
                successors=_ods_successors,
                regions=regions,
                loc=loc,
                ip=ip,
            )
        )

    @builtins.property
    def target(self):
        return self.operation.operands[0]

    @builtins.property
    def transpose_avx2_lowering(self):
        return _ods_ir.BoolAttr(self.operation.attributes["transpose_avx2_lowering"])

    @transpose_avx2_lowering.setter
    def transpose_avx2_lowering(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["transpose_avx2_lowering"] = value

    @builtins.property
    def unroll_vector_transfers(self):
        return _ods_ir.BoolAttr(self.operation.attributes["unroll_vector_transfers"])

    @unroll_vector_transfers.setter
    def unroll_vector_transfers(self, value):
        if value is None:
            raise ValueError("'None' not allowed as value for mandatory attributes")
        self.operation.attributes["unroll_vector_transfers"] = value

    @builtins.property
    def results_(self):
        return self.operation.results[0]
