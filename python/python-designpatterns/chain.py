class Handler:
    """Abstract Handler"""
    def __init__(self, successor):
        self._successor = successor

    def handle(self, request):
        handled = self._handle(request)

        if not handled:
            self._successor.handle(request)

    def _handle(self, request):
        raise NotImplementedError("Must provide implementation in subclass!")

class ConcreteHandler1(Handler):
    """Concrete Handler 1"""
    def _handle(self, request):
        if 0 < request <= 10:
            print("Request {} handled in handler 1".format(request))
            return True

class DefaultHandler(Handler):
    """Default Handler"""
    def _handle(self, request):
        print("End of Chain, no handler for {}".format(request))
        return True

class Client:
    """The Client that will use the handlers"""
    def __init__(self):
        self.handler = ConcreteHandler1(DefaultHandler(None))

    def delegate(self, requests):
        for request in requests:
            self.handler.handle(request)

# Create a client to test the Chain of Responsibility
c = Client()

# Create requests to pass to the client for delegation
requests = [2, 5, 40]
c.delegate(requests)
