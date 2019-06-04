class DrawingAPIOne(object):
    """Implementation-specific abstraction: concrete class one"""
    def draw_circle(self, x, y, radius):
        print('API 1 drawing a circle at ({}, {} with radius {}!)'.format(x, y, radius))

class DrawingAPITwo(object):
    """Implementation-specific abstraction: concrete class two"""
    def draw_circle(self, x, y, radius):
        print('API 2 drawing a circle at ({}, {} with radius {}!)'.format(x, y, radius))

class Circle(object):
    """Implementation-independent abstraction"""
    def __init__(self, x, y, radius, drawing_api):
        self._x = x
        self._y = y
        self._radius = radius
        self._drawing_api = drawing_api

    def draw(self):
        """Implementation-specific method"""
        self._drawing_api.draw_circle(self._x, self._y, self._radius)

    def scale(self, percent):
        """Implementation-independent method"""
        self._radius *= percent

# Build first circle using API One
circle1 =   Circle(1, 2, 3, DrawingAPIOne())
circle1.draw()

# Build the second circle using API Two
circle2 = Circle(4, 5, 6, DrawingAPITwo())
circle2.draw()
