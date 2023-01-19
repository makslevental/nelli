from symengine import Symbol, Integer, symbols, Eq,  linsolve
from symengine.lib.symengine_wrapper import solve
"""
 range  range  range  range  symbol  symbol               
 %arg3  %arg4   none   none   %arg1   %arg0  const        
     2     -4     -1      0       1       0      0   =  0 
     0      3      0     -1       0      -1      0   =  0 
     1      0      0      0       0       0      0  >=  0 
    -1      0      0      0       0       0     99  >=  0 
     0      1      0      0       0       0      0  >=  0 
     0     -1      0      0       0       0     49  >=  0 
"""


arg3, arg4, p0, p1, arg0, arg1 = symbols("arg3 arg4 p0 p1 arg0 arg1")


# Create two constraints.
constraints = [
    Eq(2 * arg3 - 4 * arg4 - 1 * p0 + 1 * arg1, 0),
    Eq(3 * arg4 - 1 * p1 - 1 * arg0, 0),
    0 <= arg3,
    arg3 <= 99,
    0 <= arg4,
    arg4 <= 49,
]

# make_matrix(constraints)
print(dir(constraints[0]))
