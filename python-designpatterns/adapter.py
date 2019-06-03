class Foreign:
    """A Foreign speaking class"""
    def __init__(self):
        self.name = "The Foreigner"

    def speak_jibberish(self):
        return "This is all Jibberish!"

class English:
    """An English speaking class"""
    def __init__(self):
        self.name = "An Englishman"

    def speak_english(self):
        return "I'm proper English!"

class Adapter:
    """This changes the generic method names into specific method names"""

    def __init__(self, object, **adapted_method):
        self._object = object
        self.__dict__.update(adapted_method)

    def __getattr__(self, attr):
        """Returns the attributes"""
        return getattr(self._object, attr)

# create and storing the objects that will be tested
objects = []
foreign = Foreign()
english = English()
objects.append(Adapter(foreign, speak = foreign.speak_jibberish))
objects.append(Adapter(english, speak = english.speak_english))

# Now we can use the generic method to call the specific methods
for obj in objects:
    print("{} says '{}'\n".format(obj.name, obj.speak()))
