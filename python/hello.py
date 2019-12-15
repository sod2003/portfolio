#!/usr/bin/env python3

import platform

def message():
    version = platform.python_version()
    print('Hello, World! This system is running python version {}'.format(version))

def main():
    message()

if __name__ == '__main__': main()
