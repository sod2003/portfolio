import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM) # Create socket object that will use IPv4
s.bind((socket.gethostname(), 1234)) # Binding to localhost and using a random port number that is unlikely to be in use
s.listen(5) # This provides a listening queue of 5 for the server

while True:
    clientsocket, address = s.accept() # Will accept a connection from another socket object
    print(f'Connection from {address} has been established')
    clientsocket.send(bytes('Welcome to the server!', 'utf-8'))
    clientsocket.close()