//
// Created by maksim on 2/19/23.
//

#ifndef NELLI_GPU_TRANSFORMS_H
#define NELLI_GPU_TRANSFORMS_H

namespace nelli {
void registerAddOuterParallelLoopPass();
void registerBufferHostRegisterPass();
void registerInsertGPUAllocsPass();
void registerSerializeSPIRVPass();
void registerSetSPIRVAbiAttributePass();
void registerSetSPIRVCapabilitiesPass();
void registerGPUXToSPIRVPass();
} // namespace nelli

#endif // NELLI_GPU_TRANSFORMS_H
