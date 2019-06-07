def count_to(count):
    """An iterator implementation"""
    numbers = ["one", "two", "three", "four", "five", "six"]

    # A built-in iterator will create a tuple for each item in the list e.g. (`1, "one"`)
    iterator = zip(range(count), numbers)

    for position, number in iterator:
        yield number

# Test the generated iterator
for num in count_to(4):
    print("{}".format(num))
