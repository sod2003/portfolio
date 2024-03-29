#!/usr/bin/env python3

def main():
    infile = open('nyc-station.jpg', 'rb') 
    outfile = open('nyc-copy.jpg', 'wb')
    while True:
        buf = infile.read(10240)
        if buf:
            outfile.write(buf)
            print('.', end='', flush=True)
        else: break
    outfile.close()
    print('\ndone.')

if __name__ == '__main__': main()