# Using a Hash Table to filter out duplicates.

items = ["apple", "orange", "kiwi", "pear", "banana",
        "apple", "banana", "pear", "orange", "banana",
        "apple", "kiwi", "pear", "apple", "orange"]

filter = dict()

for key in items:
    if key in filter:
        filter[key] += 1
    else:
        filter[key] = 1

result = set(filter.keys())
print(result)
print(filter)
