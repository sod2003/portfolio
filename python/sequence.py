#!/usr/bin/env python3

x = range(5)
for i in x:
    print('i is {}'.format(i))

y = { 'one': 1, 'two': 2, 'three': 3, 'four': 4, 'five': 5 }
for k, v in y.items():
    print('k: {}, v: {}'.format(k, v))
