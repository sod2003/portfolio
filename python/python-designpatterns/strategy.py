import types

class Strategy:
    """The Strategy Pattern class"""

    def __init__(self, function=None):
        self.name = "The Default Strategy"

        if function:
            self.execute = types.MethodType(function, self)

    def execute(self):
        """The default execution of the strategy"""
        print('{} is used!'.format(self.name))

def strategy_one(self):
    print('{} is used to execute method 1!'.format(self.name))

def strategy_two(self):
    print('{} is used to execute method 2!'.format(self.name))

# Test out the default strategy
s0 = Strategy()
s0.execute()

# Now test the passing of functional strategies
s1 = Strategy(strategy_one)
s1.name = "Strategy One"
s1.execute()

s2 = Strategy(strategy_two)
s2.name = "Strategy Two"
s2.execute()
