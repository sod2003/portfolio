class Subject(object):
    """Represents what is being observed"""
    def __init__(self):
        self._observers = []

    def attach(self, observer):
        if observer not in self._observers:
            self._observers.append(observer)

    def detach(self, observer):
        try:
            self._observers.remove(observer)
        except ValueError:
            pass

    def notify(self, modifier=None):
        for observer in self._observers:
            if modifier != observer:
                observer.update(self)

class Core(Subject):
    """Inherits from the Subject object"""
    def __init__(self, name=""):
        Subject.__init__(self)
        self._name = name
        self._temp = 0

    @property
    def temp(self):
        return self._temp

    @temp.setter
    def temp(self, temp):
        self._temp = temp
        Subject.notify(self)

class TempViewer:

    def update(self, subject):
        print("Temperature Viewer: {} has Temperature {}".format(subject._name, subject._temp))

# Create the Subjects for testing
c1 = Core("Core 1")
c2 = Core("Core 2")

# Create the Observers for testing
v1 = TempViewer()
v2 = TempViewer()

# Attach the observers to the first subject
c1.attach(v1)
c1.attach(v2)

# Test changing the first core temperature
c1.temp = 80
c1.temp = 90
