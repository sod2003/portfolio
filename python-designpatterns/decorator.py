from functools import wraps

def make_blink(function):
     """Defining the Decorator"""

     @wraps(function) #This makes the name and docstring of the decorator transparant

     def decorator():
         """Inner function to add new functionality"""

         ret = function()
         return "<blink>" + ret + "</blink>"

     return decorator

@make_blink
def hello_world():
    """The original function"""

    return "Hello, World!"

#Trying the decorated function
print(hello_world())

#Check that the object name isn't that of the decorator's
print(hello_world.__name__)

#Check that the object docstring isn't that of the decorator's
print(hello_world.__doc__)
