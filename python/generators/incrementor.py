# Context Manager framework
from contextlib import contextmanager

@contextmanager
def simple_context_manager(obj):
    try:
        # The initial setup before handing off to the caller
        obj.some_property += 1
        yield
    finally:
        # Wrap up after the caller is finished
        obj.some_property -= 1

class Some_obj(object):
    def __init__(self, arg):
        self.some_property = arg

def main():
    obj = Some_obj(5)
    print('The object was initialized with value: ', obj.some_property)
    with simple_context_manager(obj):
        print('The context manager yields: ', obj.some_property)
    print('The object value after the context manager calls finally: ', obj.some_property)

if __name__ == '__main__': main()