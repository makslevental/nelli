from picos import Problem, RealVariable, IntegerVariable

a = IntegerVariable("a")
b = IntegerVariable("b")

P = Problem()

P.set_objective("min", a)
P.add_constraint(a == 1)
P.add_constraint(b <= 2)

print(P.minimize.A)

