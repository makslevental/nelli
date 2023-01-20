from pprint import pprint

from z3 import Int, solve, Reals, Ints, Goal, Then, Solver
# import sage.all
# import sage.numerical.all
# from sage.numerical.mip import MixedIntegerLinearProgram
# from sage.geometry.polyhedron.constructor import Polyhedron

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
# sage.all.ZZ
#
# P1 = Polyhedron(
#     eqns=[[0, 2, -4, -1, 0, 1, 0, 0], [0, 0, 3, 0, -1, 0, -1, 0]],
#     ieqs=[
#         [0, 1, 0, 0, 0, 0, 0, 0],
#         [0, -1, 0, 0, 0, 0, 0, 99],
#         [0, 0, 1, 0, 0, 0, 0, 0],
#         [0, 0, -1, 0, 0, 0, 0, 49],
#     ],
#     minimize=False,
#     base_ring=sage.all.ZZ
# )
#
#
# pprint(P1.Hrepresentation())

# d, a, t, v_i, v_f = Reals('d a t v__i v__f')
#
# equations = [
#     d == v_i * t + (a*t**2)/2,
#     v_f == v_i + a*t,
#     ]
# print ("Kinematic equations:")
# print (equations)
#
# # Given v_i, v_f and a, find d
# problem = [
#     v_i == 30,
#     v_f == 0,
#     a   == -8
# ]
# print ("Problem:")
# print (problem)
#
# print ("Solution:")
# solve(equations + problem)

x, y = Ints('x y')
g = Goal()
g.add(x == 0, y >= x + 1)
r = Then('simplify', 'solve-eqs')(g)

s = Solver()
s.add(r[0])
print(s.check())
# Model for the subgoal
print(s.model())

# import z3
#
# x = Int('x')
# y = Int('y')
# solve(x > 2, y < 10, x + 2*y == 7)

# p = MixedIntegerLinearProgram()
# v = {}
# for name in ('arg3', 'arg4', 'p0', 'p1', 'arg0', 'arg1'):
#     v[name] = p.new_variable(integer=True, name=name)
#
# print(v["arg3"])
#
# arg3, arg4, p0, p1, arg0, arg1 = v['arg3'][0], v['arg4'][0], v['p0'][0], v['p1'][0], v['arg0'][0], v['arg1'][0]
# print(arg3)
# p.add_constraint(0 <= arg3 <= 99)
# p.add_constraint(0 <= arg4 <= 49)
# p.add_constraint(arg3 * 2 - arg4 * 4 + arg1 == p0)
# p.add_constraint(arg4 * 3 - arg0 == p1)
#
# p.show()
#
# with open("mip.lp", "w") as f:
#     p.write_lp(f.name)
