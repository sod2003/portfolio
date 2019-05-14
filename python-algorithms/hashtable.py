# Hash table functionality in Python

items1 = dict({"key1": 1, "key2": 2, "key3": 3})
print(items1["key1"])

items2 = {} # Alterrnative creation of a hash table
items2["key1"] = 1
items2["key2"] = 2
items2["key3"] = 3
print(items2)

# Changing a key's value and then iterating through the items with a custom print message
items2["key2"] = 42
for key, value in items2.items():
    print("Key: ", key, " Value: ", value)
