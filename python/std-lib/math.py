# Math module testing
import math

# Constants
print("Pi:", math.pi)
print("e:", math.e)
print("NaN:", math.nan)
print("Infinity:", math.inf)
print("Negative Infinity:", -math.inf)

# Trigonometry
direction = math.cos(math.pi/4)
print(direction)

# Ceiling and Floor
print("Ceiling is", math.ceil(10.3))
print("Floor is", math.floor(15.5))

# factorial and square root
print("Factorial of 3 is", math.factorial(3))
print("Square root of 64 is", math.sqrt(64))

# GCD
print("GCD between 52 and 8 is", math.gcd(52, 8))

# Degrees and Radians
print("Radians in a full circle:", math.radians(360))
print("Degrees in a full circle:", math.degrees(math.pi * 2))