#!/usr/bin/env python3

def main():
    infile = open('lines.txt', 'rt') # defaults to text read-mode, but a second argument of 'w' makes it write-mode, and 'a' makes it append-mode. '+b' for binary mode instead of text mode.
    outfile = open('lines-copy.txt', 'wt')
    for line in infile:
        print(line.rstrip(), file=outfile) # rstrip() is used to strip any whitespace and line endings in the file.
        print('.', end='', flush=True)
    outfile.close()
    print('\ndone.')

if __name__ == '__main__': main()