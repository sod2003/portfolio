#!/usr/bin/env python3

def function():
    a, b = 0, 1
    while(b < 1000):
        print(b, end = ' ', flush = True)
        a, b = b, a + b

def main():
    function()

if __name__ == '__main__': main()
