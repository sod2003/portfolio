import time

class Producer:
    """This is the resource-intensive object that the Proxy class will control access to"""
    def produce(self):
        print("Producer is working hard")

    def meet(self):
        print("Producer has time to meet you now")

class Proxy:
    """The Proxy class acts as a middleman to the Producer object"""
    def __init__(self):
        self.occupied = "No"
        self.producer = None

    def produce(self):
        """Checks to see if the Producer is available"""
        print("Artist checking to see if the Producer is available...")

        if self.occupied == "No":
            self.producer = Producer()
            time.sleep(2)
            self.producer.meet()

        else:
            time.sleep(2)
            print("Producer is busy!")

# Test the Proxy while the Producer is not busy
p = Proxy()
p.produce()

# Test the Proxy while the Producer is busy
p.occupied = "Yes"
p.produce()
