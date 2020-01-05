#!/usr/bin/env python3

class Duck:
    move = 'walks like a Duck.'

    def __init__(self, **kwargs):
        if 'name' in kwargs: self._name = kwargs['name']
        if 'quack' in kwargs: self._sound = kwargs['quack']

    def name(self, n=None):
        if n: self._name = n
        try: return self._name
        except AttributeError: return None

    def quack(self, q=None):
        if q: self._sound = q
        try: return self._sound
        except AttributeError: return None

    def walk(self):
        return self.move

    def __str__(self):
        return f'The Duck is named {self.name()}. It says "{self.quack()}" and {self.walk()}'

def main():
    donald = Duck(name='Donald', quack='Quack')
    print(donald)

if __name__ == '__main__': main()