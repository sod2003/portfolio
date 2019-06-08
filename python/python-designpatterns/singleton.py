class Borg:
    """Borg class making class attributes global"""
    _shared_state = {}

    def __init__(self):
        # Attribute dictionary
        self.__dict__ = self._shared_state

class Singleton(Borg): # inherits from the Borg class
    """This class shares its attributes among all its instances"""

    def __init__(self, **kwargs):
        Borg.__init__(self)
        # Update the attribute dictionary by inserting a new key-value pair
        self._shared_state.update(kwargs)

    def __str__(self):
        # Return the attribute dictionary for printing
        return str(self._shared_state)

# Test the Singleton pattern
x = Singleton(HTTP = "Hyper Text Transfer Protocol")
print(x)

# Instantiate another instance of the Singleton to test the global state is being shared
y = Singleton(SNMP = "Simple Network Management Protocol")
print(y)
