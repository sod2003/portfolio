# Function
#def even_integers_function(n):
#   result = []
#   for i in range(n):
#       if i % n == 0:
#           result.append(i)
#   return result

# Generator
def even_integer_generator(n):
    for i in range(n):
        if i % n == 0:
            yield i