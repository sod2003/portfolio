from time import time
from contextlib import contextmanager

HEADER = "This is the header\n"
FOOTER = "\nThis is the footer \n"

@contextmanager
def log_file(name):
    try:
        logname = name
        f = open(logname, 'w')
        f.write(HEADER)             # Writes the header to the logfile
        yield f                     # Passes control of f to the caller
    finally:
        f.write(FOOTER)             # Writes the footer after the caller returns control
        print("logfile created")    
        f.close()

def main():
    with log_file('logfile') as file:
        file.write('This is the body')    # Writes this statement to the logfile after setup

if __name__ == '__main__': main()