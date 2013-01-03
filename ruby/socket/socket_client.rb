require "socket" # Sockets are in standard library
class SocketClient
  hostname = 'localhost'
  port = 2000

  loop {
    tcp_socket = TCPSocket.open(hostname, port)

    while line = tcp_socket.gets # Read lines from the socket
      puts line.chop # And print with platform line terminator
      sleep 3
    end
    tcp_socket.close # Close the socket when done
  }
end