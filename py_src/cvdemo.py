import cvxpy as cp
from cvxpy import (
    ConeMatrixStuffing,
)

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

"""
dstRel
 range  range  range  range  symbol  symbol               
 %arg3  %arg4   none   none   %arg0   %arg2  const        
     7      9     -1      0      -1       0      0   =  0 
     0     11      0     -1       0       1      0   =  0 
     1      0      0      0       0       0      0  >=  0 
    -1      0      0      0       0       0     99  >=  0 
     0      1      0      0       0       0      0  >=  0 
     0     -1      0      0       0       0     49  >=  0 
"""

# Create two constraints.
# Form objective.
def convert_cons_to_matrix(constraints):
    obj = cp.Minimize(arg4)
    prob = cp.Problem(obj, constraints)
    co = ConeMatrixStuffing(False)
    new_prob, inverse_data = co.apply(prob)

    for k, v in sorted(new_prob.var_id_to_col.items(), key=lambda k_v: k_v[1]):
        print(inverse_data.id2var[k], end=" ")
    print()
    print(
        new_prob.A.todense()
        .reshape(len(new_prob.variables) + 1, new_prob.constr_size)
        .T
    )

    # inverse_data = InverseData(prob)
    # extractor = CoeffExtractor(inverse_data, None)
    #
    # cons = []
    # for con in constraints:
    #     if isinstance(con, Equality):
    #         con = lower_equality(con)
    #     elif isinstance(con, Inequality):
    #         con = lower_ineq_to_nonneg(con)
    #     elif isinstance(con, NonPos):
    #         con = nonpos2nonneg(con)
    #     elif isinstance(con, SOC) and con.axis == 1:
    #         con = SOC(con.args[0], con.args[1].T, axis=0, constr_id=con.constr_id)
    #     elif isinstance(con, PowCone3D) and con.args[0].ndim > 1:
    #         x, y, z = con.args
    #         alpha = con.alpha
    #         con = PowCone3D(
    #             x.flatten(),
    #             y.flatten(),
    #             z.flatten(),
    #             alpha.flatten(),
    #             constr_id=con.constr_id,
    #         )
    #     elif isinstance(con, ExpCone) and con.args[0].ndim > 1:
    #         x, y, z = con.args
    #         con = ExpCone(
    #             x.flatten(), y.flatten(), z.flatten(), constr_id=con.constr_id
    #         )
    #     cons.append(con)
    #
    # all_vars = reduce(lambda acc, v: acc | set(v.variables()), cons, set())
    # expr_list = [arg for c in cons for arg in c.args]
    # params_to_problem_data = extractor.affine(expr_list)
    # inverse_data.get_var_offsets(all_vars)
    #


arg3, arg4, p0, p1, arg0, arg1 = (
    cp.Variable(integer=True, name="arg3"),
    cp.Variable(integer=True, name="arg4"),
    cp.Variable(integer=True, name="p0"),
    cp.Variable(integer=True, name="p1"),
    cp.Variable(integer=True, name="arg0"),
    cp.Variable(integer=True, name="arg1"),
)

constraints = [
    2 * arg3 - 4 * arg4 - 1 * p0 + 1 * arg1 == 0,
    3 * arg4 - 1 * p1 - 1 * arg0 == 0,
    0 <= arg3,
    arg3 <= 99,
    0 <= arg4,
    arg4 <= 49,
]

convert_cons_to_matrix(constraints)


constraints = [
    7 * arg3 + 9 * arg4 - 1 * p0 + 1 * arg1 == 0,
    3 * arg4 - 1 * p1 - 1 * arg0 == 0,
    0 <= arg3,
    arg3 <= 99,
    0 <= arg4,
    arg4 <= 49,
    ]

convert_cons_to_matrix(constraints)



# for v in new_prob.variables:
#     print(v, end=" ")
# print()
# print(new_prob.A.reshape(len(new_prob.variables) + 1, len(new_prob.constraints)).todense().T)


# for i, j in zip(*new_prob.A.nonzero()):
#     print(i, j, new_prob.A[i, j])
#     # mat[i, j] = new_prob.A[i, j]
#
# print(mat)
# print(prob)

# d = Dcp2Cone(prob)
# new_problem, inverse_data = d.apply(prob)
# print(new_problem)

# prob.solve()
#
# # The optimal dual variable (Lagrange multiplier) for
# # a constraint is stored in constraint.dual_value.
# print("optimal (x + y == 1) dual variable", constraints[0].dual_value)
# print("optimal (x - y >= 1) dual variable", constraints[1].dual_value)
# print("x - y value:", (x - y).value)
