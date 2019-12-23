#!/usr/bin/env python3

food = 'fishsticks'
guess = ''
count = 0
max_attempts = 5

while guess != food:
    if count == max_attempts:
        print('How do you not know I love fishsticks?!')
        break;
    print("What's for dinner?")
    guess = input()
    if guess == food:
        print('YUM! My favorite!')
        break;
    else:
        count += 1

fish = ('sturgeon', 'tuna', 'salmon', 'cod', 'halibut')

for dinner in fish:
    print(dinner)
