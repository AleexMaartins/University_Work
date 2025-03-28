import socket

import threading

import signal

import sys



def signal_handler(sig, frame):

    print('\nServer offline!')

    sys.exit(0)



signal.signal(signal.SIGINT, signal_handler)



print("∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗\n∗ Server Configuration ∗\n∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗∗")

print("CPU/RAM usage")

interval = input("Interval between updates(seconds): ")

while (not interval.isnumeric()):

    interval = input("Error: Input! Please input value of integer type: ")

print(f"Server set up to receive CPU/RAM updates every {interval} seconds.\n")

##

numConnections = 0

clients = []

def handle_client_connection(client_socket,address): 

    client_connect_msg(address)

    client_socket.send(interval.encode())

    try:

        while True:

            request = client_socket.recv(1024)

            if not request:

                client_socket.close()

            else:

                msg = request.decode()

                cpu = msg.split(" ")[0]

                ram = msg.split(" ")[1]

                print(f"Client {address} CPU: {cpu}% RAM: {ram}%")

    except (socket.timeout, socket.error):

        client_quit_msg(address)



def client_quit_msg(address):

    clients.remove(address)

    print('Client {} has left.'.format(address))

    print(f"Number of total connections: {numConnections}")

    print(f"Number of current connections: {len(clients)}")



def client_connect_msg(address):

    print('Accepted connection from new client with IP {}:{}'.format(address[0], address[1]))

    print(f"Number of current connections: {len(clients)}")



ip_addr = "203.0.0.129"

tcp_port = 5005

server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

server.bind((ip_addr, tcp_port))

server.listen(5)  # max backlog of connections

print('Server online and listening on {}:{}\nPress Ctrl+C to shutdown server.'.format(ip_addr, tcp_port))



while True:

    client_sock, address = server.accept()

    numConnections += 1

    clients.append(address)

    client_handler = threading.Thread(target=handle_client_connection,args=(client_sock,address),daemon=True)

    client_handler.start()




