#!/usr/bin/env python3
import sys

def main():
    try:
        x = 5/0
    except ValueError:
        print('Caught a ValueError')
    except:
        print(f'Unhandled error: {sys.exc_info()}')
    else:
        print('No error')
        print(x)

if __name__ == '__main__': main()