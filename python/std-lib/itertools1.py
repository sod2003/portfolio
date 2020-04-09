# Itertools Module
import itertools

# Infinite Counting
for x in itertools.count(5, 5):
    print(x)
    if x == 15:
        break

# Infinite cycling
x = 0
for c in itertools.cycle("Fruitloops"):
    print(c)
    x = x + 1
    if x >= 5:
        break

# Infinite Repeating
for r in itertools.repeat(True):
    print(r)
    x = x + 1
    if x == 7:
        break