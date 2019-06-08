class Component(object):
    """The Abstract Class"""

    def __init__(self, *args, **kwargs):
        pass

    def component_function(self):
        pass

class Child(Component):
    """The Concrete implementation of the Abstract"""

    def __init__(self, *args, **kwargs):
        Component.__init__(self, *args, **kwargs)
        self.name = args[0]

    def component_function(self):
        print("{}".format(self.name))

class Composite(Component):
    """Maintains a tree structure for organization"""

    def __init__(self, *args, **kwargs):
        Component.__init__(self, *args, **kwargs)
        self.name = args[0]
        self.children = []

    def append_child(self, child):
        self.children.append(child)

    def remove_child(self, child):
        self.children.remove(child)

    def component_function(self):
        print("{}".format(self.name))
        for i in self.children:
            i.component_function()

# Build out a Composite submenu
sub1 = Composite("submenu1")
sub11 = Child("sub_submenu1-1")
sub12 = Child("sub_submenu1-2")
sub1.append_child(sub11)
sub1.append_child(sub12)

# Create a top-level Composite menu
top = Composite("top_menu")

# Build a submenu that's not a Composite
sub2 = Child("submenu2")

# Add the submenus to the top-level menu
top.append_child(sub1)
top.append_child(sub2)

# Now we can test the entire Composite data structure
top.component_function()
