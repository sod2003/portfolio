#!/usr/bin/env python3

def action(**kwargs):
    if len(kwargs):
        print('Christmas List:')
        for i in kwargs:
            print(f'{i}: {kwargs[i]}')
    else:
        print('Meow')

def main():
    x = dict(One = 'Family Time', Two = 'Snacks', Three = 'Games')
    action(**x) # Passing a reference to the dictionary

if __name__ == '__main__': main()
