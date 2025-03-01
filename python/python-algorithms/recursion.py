# Recursion examples in Python

def power(num, pwr):
    if pwr == 0:
        return 1
    else:
        return num * power(num, pwr-1)

def factorial(num):
    if num == 0:
        return 1
    else:
        return num * factorial(num-1)

print("{} to the power of {} is {}".format(5, 3, power(5, 3)))
print("{} to the power of {} is {}".format(3, 5, power(3, 5)))
print("{}! is {}".format(4, factorial(4)))
print("{}! is {}".format(5, factorial(5)))
