# Wrapping the Coroutine with a decorator to pre-prime the coroutine object

def coroutine_decorator(func):
    def wrap(*args, **kwargs):
        cr = func(*args, **kwargs)
        next(cr)
        return cr
    return wrap


@coroutine_decorator
def coroutine_example():
    while True:
        x = (yield)
        print(x)

def main():
    c = coroutine_example()
    c.send("Successfully primed and decorated!")

if __name__ == '__main__': main()