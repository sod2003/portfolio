# Queue functionality in Python
from collections import deque

queue = deque() # Deque has more functionality than a normal array, allowing dequeing FIFO operation

queue.append(1)
queue.append(2)
queue.append(3)
queue.append(4)

print("After adding values, the queue is: ", queue)

queue.popleft()

print("After removing the first value, the queue is: ", queue)
