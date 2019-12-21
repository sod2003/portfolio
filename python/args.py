#!/usr/bin/env python3

def action(*args):
    if len(args):
        print('Christmas List:')
        count = 1
        for i in args:
            print(f'{count}. {i}')
            count += 1
    else:
        print('Meow')

def main():
    x = ('Family Time', 'Snacks', 'Games')
    action(*x) # Passing a reference to the x tuple

if __name__ == '__main__': main()
