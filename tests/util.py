import difflib
import re
from textwrap import dedent


def check_correct(correct, module):
    correct = dedent(re.sub(r"([%#@]\w+)|(\^bb\d+)|(0x\w+)", "%DONT_CARE", correct))
    module = dedent(re.sub(r"([%#@]\w+)|(\^bb\d+)|(0x\w+)", "%DONT_CARE", str(module)))
    diff = list(
        difflib.unified_diff(
            correct.splitlines(),
            module.splitlines(),
            lineterm="",
        )
    )
    assert len(diff) == 0, "\n".join(diff)
