class Dog:
    """The Dog Class"""

    def speak(self):
        return "Woof!"

    def __str__(self):
        return "Dog"

class DogFactory:
    """Concrete Factory for producing Dogs"""

    def get_pet(self):
        """returns Dog object"""

        return Dog()

    def get_food(self):
        """Returns Dog Food"""

        return "Dog Food!"

class PetStore:
    """The PetStore houses our Abstract Factory"""

    def __init__(self, pet_factory=None):
        """pet_factory is our Abstract Factory"""

        self._pet_factory = pet_factory

    def show_pet(self):
        """Method to display the details of the objects returned by the factory"""

        pet = self._pet_factory.get_pet()
        pet_food = self._pet_factory.get_food()

        print("Our pet is a '{}'!".format(pet))
        print("Our pet says '{}'".format(pet.speak()))
        print("Our pet eats '{}'".format(pet_food))

# Here we'll create an instance of the Concrete factory
factory = DogFactory()

# Here we'll create a pet store to house our Abstract Factory
shop = PetStore(factory)

# Now we'll test the utility method to show details of the objects created by our factory
shop.show_pet()
