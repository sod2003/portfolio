#!/usr/bin/env python3

def main():
    print('Hello'.upper()) # Could also use lower(), or capitalize(), or title(), etc.
    print('Hello'.swapcase()) # Try casefold() too.

    x = 42
    print(f'The secret to the universe is {x:.1f}')

    s = "This is a long string that I'm going to split"
    print(s)
    l = s.split()
    s2 = ' : '.join(l)
    print(s2 + " and join with ':'")

if __name__ == '__main__': main()