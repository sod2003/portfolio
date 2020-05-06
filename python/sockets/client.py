import socket, pickle

HEADERSIZE = 10

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM) # Create socket object that will use IPv4
s.connect((socket.gethostname(), 1234)) # Same information as used in the server bind, but we want the client to connect to the server

while True:

    full_msg = b'' # Expecting bytes, remove b if not in bytes
    new_msg = True
    while True:
        msg = s.recv(16) # Receive the server connect msg with a 16 byte buffer
        if new_msg:
            print(f'New message length: {msg[:HEADERSIZE]}')
            msglen = int(msg[:HEADERSIZE])
            new_msg = False # We only need to get the message length on the initial pass through

        full_msg += msg  # If not bytes passing through then must attach .decode('utf-8') to msg

        if len(full_msg) - HEADERSIZE == msglen:
            print('Full message received')
            print(full_msg[HEADERSIZE:])

            d = pickle.loads(full_msg[HEADERSIZE:])
            print(d)

            new_msg = True
            full_msg = b'' # Expecting bytes, remove b if not in bytes

print(full_msg)