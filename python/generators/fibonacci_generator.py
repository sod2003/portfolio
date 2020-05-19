# Fibonacci Generator
def fibonacci_generator(n):
    trailing, lead = 0, 1
    for i in range(n):
        yield lead
        trailing, lead = lead, trailing + lead

def main():
    for i in fibonacci_generator(8):
        print(i)

if __name__ == "__main__": main()