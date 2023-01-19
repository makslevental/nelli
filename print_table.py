src_rel = """
%arg3 %arg4 %arg3' %arg4' %arg0 %arg2 %arg1 const - rhs
-2 4 7 9 -1 0 -1 0 = 0
0 -3 0 11 1 1 0 0 = 0
1 0 0 0 0 0 0 0 >= 0
-1 0 0 0 0 0 0 99 >= 0
0 1 0 0 0 0 0 0 >= 0
0 -1 0 0 0 0 0 49 >= 0
0 0 1 0 0 0 0 0 >= 0
0 0 -1 0 0 0 0 99 >= 0
0 0 0 1 0 0 0 0 >= 0
0 0 0 -1 0 0 0 49 >= 0
"""
lines = [l.split() for l in src_rel.splitlines(keepends=False)[1:]]

row_format ="{:>8}" * (len(lines[0]) + 1)
for l in lines:
    print(row_format.format("", *l))