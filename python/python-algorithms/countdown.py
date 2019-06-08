# a simple recursion example

def countdown(x):
    if x == 0:
        print("ZERO!!!")
        return
    else:
        print(x, "...")
        countdown(x-1)

countdown(5)
