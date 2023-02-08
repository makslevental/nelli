import difflib
import re


def check_correct(correct, module):
    correct = re.sub(r"%\w+", "%DONT_CARE", correct)
    module = re.sub(r"%\w+", "%DONT_CARE", str(module))
    diff = list(
        difflib.unified_diff(
            module.splitlines(),
            correct.splitlines(),
            lineterm="",
        )
    )
    assert len(diff) == 0, "\n".join(diff)
