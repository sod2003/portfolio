class Dog:
    """The Dog Class"""

    def __init__(self, name):
        self._name = name

    def speak(self):
        return "Woof!"

class Cat:
    """The Cat Class"""

    def __init__(self, name):
        self._name = name

    def speak(self):
        return "Meow!"

def get_pet(pet="dog"):
    """The Factory method taking advantage of the features of Python
    This is implemented differently in other object-oriented languages"""

    pets= dict(dog=Dog("Rufus"), cat=Cat("Mittens"))

    return pets[pet]

d = get_pet("dog")
c = get_pet("cat")
print(d.speak())
print(c.speak())
