import socket, time

HEADERSIZE = 10

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM) # Create socket object that will use IPv4
s.bind((socket.gethostname(), 1234)) # Binding to localhost and using a random port number that is unlikely to be in use
s.listen(5) # This provides a listening queue of 5 for the server

while True:
    clientsocket, address = s.accept() # Will accept a connection from another socket object
    print(f'Connection with {address} has been established')
    msg = 'Welcome to the server!'
    msg = f'{len(msg):<{HEADERSIZE}}' + msg # The HEADER is the length of message
    clientsocket.send(bytes(msg, 'utf-8'))
    
    while True:
        time.sleep(3)
        msg = f'The time is {time.time()}'
        msg = f'{len(msg):<{HEADERSIZE}}' + msg
        clientsocket.send(bytes(msg, 'utf-8'))
