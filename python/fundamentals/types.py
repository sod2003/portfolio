#!/usr/bin/env python3
from decimal import *

a = 'strings'
x = f'formating {a}'
print('This is an example of two ways of {}'.format(x))

y = .1 + .1 + .1 - .3
print(f'Floating point values sacrifice accuracy for precision. .1+.1+.1-.3 = {y} in Python')

tenCent = Decimal('.10')
thirtyCent = Decimal('.30')
z = tenCent + tenCent + tenCent - thirtyCent
print(f'So with the imported decimal module, we can get the right value of {z}')

x = 47
y = divmod(x, 3) # divmod returns a tuple of quotient and remainder

print(f'x is {type(x)}')
print(f'x is {x}')
print(f'y is {type(y)}')
print(f'y is {y}')
y = x + 47j
print(f'y is now {type(y)}')
print(f'y is now {y}')
