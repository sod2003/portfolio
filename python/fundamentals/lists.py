#!/usr/bin/env python3

def print_list(o):
    #for i in o: print(i, end=' ', flush=True)
    print(", ".join(o))

def main():
    x = ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock']
    print_list(x)

if __name__ == '__main__': main()
