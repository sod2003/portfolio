import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM) # Create socket object that will use IPv4
s.connect((socket.gethostname(), 1234)) # Same information as used in the server bind, but we want the client to connect to the server

msg = s.recv(1024) # Receive the server connect msg with a 1024 buffer
print(msg.decode('utf-8'))