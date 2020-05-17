import socket, select, errno, sys

HEADER_LENGTH = 10

IP = "127.0.0.1"
PORT = 1234

username = input("Username: ")
client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client_socket.connect((IP, PORT))
client_socket.setblocking(False)

username_encoded = username.encode("utf-8")
username_header = f"{len(username_encoded):<{HEADER_LENGTH}}".encode("utf-8")
client_socket.send(username_header + username_encoded)

while True:
    message = input(f"{username} > ")

    if message:
        message = message.encode("utf-8")
        message_header = f"{len(message) :< {HEADER_LENGTH}}".encode("utf-8")
        client_socket.send(message_header + message)

    try:
        while True:
            # Receive messages from server
            username_header = client_socket.recv(HEADER_LENGTH)
            if not len(username_header):
                print("connection closed by the server")
                sys.exit()
            username_length = int(username_header.decode("utf-8").strip())
            username_decoded = client_socket.recv(username_length).decode("utf-8")

            message_header = client_socket.recv(HEADER_LENGTH)
            message_length = int(message_header.decode("utf-8").strip())
            message = client_socket.recv(message_length).decode("utf-8")

            print(f"{username_decoded} > {message}")

    except IOError as e:
        if e.errno != errno.EAGAIN and e.errno != errno.EWOULDBLOCK:
            print("Reading error: ", str(e))
            sys.exit()
        continue

    except Exception as e:
        print("General error: ", str(e))
        pass