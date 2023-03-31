import numpy as np


def np_divisors(N):
    divs = np.arange(1, int(N ** 0.5) + 1)  # potential divisors up to √N
    divs = divs[N % divs == 0]  # divisors
    comp = N // divs[::-1]  # complement quotients
    return np.concatenate((divs, comp[divs[-1] == comp[0] :]))  # combined
