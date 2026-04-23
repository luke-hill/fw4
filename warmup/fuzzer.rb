require 'socket'

host = '127.0.0.1'   # or 'localhost'
port = 3000          # change to whatever your service uses
quantity = rand(10000) # Random number of requests to send

2.times do |i|
  socket = TCPSocket.new(host, port)
  socket.puts "ABC"
  socket.close
end
