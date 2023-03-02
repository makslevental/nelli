from typing import Optional, Union

from ...mlir._mlir.ir import Attribute


def entry_point_abi(workgroup_size: Optional[Union[tuple[int, ...], list[int]]] = None):
    if workgroup_size is not None:
        workgroup_size = list(workgroup_size)
        workgroup_size = f"workgroup_size = {workgroup_size}"
    else:
        workgroup_size = ""
    return Attribute.parse(f"#spirv.entry_point_abi<{workgroup_size}>")


def resource_limits():
    return Attribute.parse(f"#spirv.resource_limits<>")


def vce():
    return Attribute.parse(
        f"#spirv.vce<v1.0, [Shader], [SPV_KHR_storage_buffer_storage_class]>"
    )


def target_env():
    vce_ = vce()
    resource_limits_ = resource_limits()
    return Attribute.parse(f"#spirv.target_env<{vce_}, {resource_limits_}>")


def set_module_target_env(module):
    module.operation.attributes["spirv.target_env"] = target_env()
    return module
