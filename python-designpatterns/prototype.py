import copy

class Prototype:

    def __init__(self):
        self._objects = {}

    def register_object(self, name, obj):
        """Register the object"""
        self._objects[name] = obj

    def unregister_object(self, name):
        """Unregister the object"""
        del self._objects[name]

    def clone(self, name, **attr):
        """Clone the registered object and update its attributes"""
        obj = copy.deepcopy(self._objects.get(name))
        obj.__dict__.update(attr)
        return obj

class Car:

    def __init__(self):
        self.name = "Amazing Brand"
        self.color = "Blue"
        self.options = "SX"

    def __str__(self):
        return '{} | {} | {}'.format(self.name, self.color, self.options)

car = Car()
prototype = Prototype()
prototype.register_object("Amazing Brand", car)
clone = prototype.clone("Amazing Brand", color="Orange") # Cloned the Car prototype and updated color to Orange
print(clone)
