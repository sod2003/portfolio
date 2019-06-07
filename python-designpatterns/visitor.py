class House(object):
    """The class being visited"""
    def accept(self, visitor):
        visitor.visit(self)

    def work_on_hvac(self, hvac_specialist):
        print(self, "worked on by", hvac_specialist)

    def work_on_electricity(self, electrician):
        print(self, "worked on by", electrician)

    def __str__(self):
        return self.__class__.__name__

class Visitor(object):
    """The abstract class"""
    def __str__(self):
        return self.__class__.__name__

class HvacSpecialist(Visitor):
    """Concrete implementation of the Hvac visitor"""
    def visit(self, house):
        house.work_on_hvac(self)

class Electrician(Visitor):
    """Concrete implementation of the Electrician visitor"""
    def visit(self, house):
        house.work_on_electricity(self)

# Create the visitors for testing
bill = HvacSpecialist()
ted = Electrician()

# Create the house for testing
house = House()

# Test the house accepting its visitors
house.accept(bill)
house.accept(ted)

# Print the str names
print("Bill is a", bill)
print("Ted is an", ted)
print("Bill and Ted worked on a", house)
