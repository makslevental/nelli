import time

import torch

scale = 20
N, CI, HI, WI = 1, 1, 64 * scale, 64 * scale
K = 3
CO = 3
HO, WO = HI - (K - 1), WI - (K - 1)
N_RUNS = 10

input_type = (N, CI, HI, WI)
output_type = (N, CO, HO, WO)

conv = torch.nn.Conv2d(CI, CO, K)
x = torch.randn(input_type)
if torch.cuda.is_available():
    x = x.cuda()
    conv = conv.cuda()
times = []
for i in range(N_RUNS):
    start = time.monotonic_ns()
    y = conv(x)
    times.append(time.monotonic_ns() - start)

print(f"pytorch, {sum(times[1:]) / N_RUNS / 1e9}")
