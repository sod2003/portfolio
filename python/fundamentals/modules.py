#!/usr/bin/env python3
import sys, os, random, datetime

def main():
    v = sys.version_info
    print('Python version installed is {}.{}.{}'.format(*v))
    y = sys.platform
    print('The platform is {}'.format(y))

    oper = os.name
    print('The operating system is {}'.format(oper))
    path = os.getenv('PATH')
    print('The PATH environment variable contains: {}'.format(path))
    curr_dir = os.getcwd()
    print('The current working directory is: {}'.format(curr_dir))
    hash = os.urandom(25).hex()
    print(hash)

    rando = random.randint(1, 1000)
    print(rando)
    x = list(range(25))
    print(x)
    random.shuffle(x)
    print('Now, shuffled: {}'.format(x))

    now = datetime.datetime.now()
    print(now)
    print('Year:', now.year, 'Month:', now.month, 'Day:', now.day, 'Hour:', now.hour, 'Minute:', now.minute, 'Second:', now.second, 'Microsecond:', now.microsecond)

if __name__ == '__main__': main()