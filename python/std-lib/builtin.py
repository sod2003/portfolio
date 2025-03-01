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

# len() --> returns length
name = "Sean"
print("the length of the name is", len(name))
name.__len__() # Length is a property of the object
listOfNames = ["Sean", "David", "Charlie"]
print("The length of the list of names is", len(listOfNames))

# range(x) --> Holds numbers between 0 and x
number = range(15)

# list() --> Lists out the objects within a container
print(list(number))
for x in number:
    print("Number", x)

# Min and Max
scores = [0, 2, 4, 5, 3]
print("The scores are:", scores)
print("The Minimum score is", min(scores))
print("The Maximum score is", max(scores))

# Rounding 'round(x)', absolute values 'abs(x)', and exponents 'pow(x, y)'
digit = 3.4
print("Rounding 3.4 to", round(digit))
print("The absolute value of -3 is", abs(-3))
print("2 raised to the power of 3 is", pow(2, 3))

# sorted(x)
scores = [0, 2, 14, 5, 7]
sortedScores = sorted(scores)
print("The sorted scores are", sortedScores)
print("And backwards", sorted(scores, reverse=True))
print(sorted("This sentence is sorted case-insensitive".split(), key=str.upper))
students= [('Alice', 'B', 12), ('Eliza', 'A', 16), ('Gene', 'C', 15)]
print("The students sorted by their grades is:", sorted(students, key=lambda student:student[1]))

# type(x)
r=range(0,30)
print("The type of r is", type(r))

# isinstance(x, y)
class Car:
    pass

c = Car()
print("c is an instance of Car:", isinstance(c, Car))
