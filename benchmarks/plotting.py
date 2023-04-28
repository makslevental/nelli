from collections import defaultdict
import numpy as np

from matplotlib import pyplot as plt


def get_times(fp):
    results = open(fp).readlines()
    results = [float(r.strip().split(",")[-1]) for r in results]
    return results


def plot_hill(results, name):
    z = [z for *_, z in results]
    plt.plot(list(range(len(z))), sorted(z, reverse=True), label=name)
    plt.yscale("log")
    plt.ylabel("time (s)")
    plt.legend()
    plt.savefig(f"{name}.pdf")
    plt.title("nevergrad search @ conv2d")


def plot_bars(species, penguin_means):
    x = np.arange(len(species))  # the label locations
    width = 0.15  # the width of the bars
    multiplier = 0

    fig, ax = plt.subplots(layout="constrained")

    more_offset = 0
    hatch = ["o", ".", "o", ".", "/"]
    for i, (attribute, measurement) in enumerate(penguin_means.items()):
        offset = width * multiplier
        if i in {2, 4}:
            more_offset += 0.05

        rects = ax.bar(
            x + offset + more_offset,
            measurement,
            width,
            label=attribute,
            edgecolor="black",
            hatch=hatch[i],
        )
        ax.bar_label(rects, padding=3, rotation=90, color="black", fmt="%.2e")
        multiplier += 1

    # Add some text for labels, title and custom x-axis tick labels, etc.
    ax.set_ylabel("Time (s)")
    ax.set_yscale("log")
    ax.set_title("")
    ax.set_xticks(x + width * 2, species)
    ax.legend(loc="upper left", ncols=3)
    ax.set_ylim(0, 10)

    plt.savefig("nevergrad.pdf")


deploys = ["workstation", "rpi", "laptop"]
times = defaultdict(list)

for deploy in deploys:
    for name in ["openmp", "vulkan", "cuda"]:
        try:
            results = get_times(f"{deploy}/{name}.csv")
            name = {"cuda": "GPU", "vulkan": "GPU", "openmp": "OpenMP"}[name]
            baseline = results[0]
            times[f"{name} baseline"].append(baseline)
            mini = min(results[1:])
            times[name].append(mini)
        except:
            pass
        pytorch_res = get_times(f"{deploy}/pytorch.csv")
    times["PyTorch"].append(pytorch_res[0])

plot_bars(["NVIDIA 3080Ti", "Broadcom VideoCore VI", "Apple Neural Engine"], times)
