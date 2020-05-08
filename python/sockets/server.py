import socket, time, pickle

HEADERSIZE = 10

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM) # Create socket object that will use IPv4
s.bind((socket.gethostname(), 1234)) # Binding to localhost and using a random port number that is unlikely to be in use
s.listen(5) # This provides a listening queue of 5 for the server

while True:
    clientsocket, address = s.accept() # Will accept a connection from another socket object
    print(f'Connection with {address} has been established')

    d = {1: 'Howdy', 2: 'Sasparilla'}
    msg = pickle.dumps(d)
    #print(msg) 

    msg = bytes(f'{len(msg):<{HEADERSIZE}}', 'utf-8') + msg # The HEADER is the length of message
    clientsocket.send(msg) # If msg is not already converted to bytes, then it should be done here eq. bytes(msg, 'utf-8')