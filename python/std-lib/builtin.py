# Python Built-in library experiments

# Logical operators
isRaining = True
isSunny = False

# AND
if isRaining and isSunny:
    print("We might see a Rainbow")

# OR
if isRaining or isSunny:
    print("Yep, it's weather out there")

# NOT
if not isSunny:
    print("Ain't seen the Sun today")

# Comparison operators
kitten = 10
tiger = 75
if kitten < tiger:
    print("The kitten weighs less than the tiger")

# Compound operators
mouse = 1
if mouse < kitten and mouse < tiger:
    print("The mouse weighs the least")