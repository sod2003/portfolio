# LinkedList implementation

# Node class
class Node(object):
    def __init__(self, val):
        self.val = val
        self.next = None

    def get_data(self):
        return self.val

    def set_data(self, val):
        self.val = val

    def get_next(self):
        return self.next

    def set_next(self, next):
        self.next = next

# LinkedList class
class LinkedList(object):
    def __init__(self, head=None):
        self.head = head
        self.count = 0

    def get_count(self):
        return self.count

    def insert(self, data):
        new_node = Node(data)
        new_node.set_next(self.head)
        self.head = new_node
        self.count += 1

    def find(self, val):
        item = self.head
        while(item != None):
            if item.get_data() == val:
                return item
            else:
                item = item.get_next()
        return None

    def deleteAt(self, idx):
        if idx > self.count-1:
            return
        if idx == 0:
            self.head = self.head.get_next()
        else:
            tempIdx = 0
            node = self.head
            while tempIdx < idx - 1:
                node = node.get_next()
                tempIdx += 1
            node.set_next(node.get_next().get_next())
            self.count -= 1

    def dump_list(self):
        tempnode = self.head
        while(tempnode != None):
            print("Node: ", tempnode.get_data())
            tempnode = tempnode.get_next()

# Creating a Linkedlist
itemlist = LinkedList()
itemlist.insert(38)
itemlist.insert(23)
itemlist.insert(12)
itemlist.insert(9)
itemlist.insert(89)
itemlist.dump_list()

# Running Linkedlist fucntions
print("Item count: ", itemlist.get_count())
print("Finding item: ", itemlist.find(23))
print("Finding item: ", itemlist.find(22))
print("Deleting node at index 3")
itemlist.deleteAt(3)
print("Item count: ", itemlist.get_count())
print("Finding item: ", itemlist.find(23))
itemlist.dump_list()
