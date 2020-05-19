# list comprehension
newlist = [item.upper() for item in collection]

# generator expression
(item.upper() for item in collection)

# The geneator expression of the function in generator_function.py
even_integers = (n for n in range(10) if n%2==0)