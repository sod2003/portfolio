# Coroutine generator
# This counter will accept a string argument, and will capture send() data through yield into variable item.
# If item is contained within the string parameter, the count is incremented and item is printed.
# If item is not within string, No match is printed. If item is not a string, Not a string is printed.
# When the coroutine is closed, the GeneratorExit exception is thrown and prints the count.

def counter(string):
    count = 0
    try:
        item = yield
        if isinstance(item, str):
            if item in string:
                count += 1
                print(item)
            else:
                print("No match")
        else:
            print("Not a string")
    except GeneratorExit:
        print(count)

def main():
    c = counter("Georgia")
    c.__next__()                 # The __next__() call will prime the coroutine to accept data without error
    c.send("Geo")
    c.send("Atlanta")
    c.send(123)
    c.send("gia")
    c.close()

if __name__ == '__main__': main()