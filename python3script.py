print("This only works with python 3, not python 2.")
(a, *rest, b) = range(5)
assert(a == 0)
assert(b == 4)
