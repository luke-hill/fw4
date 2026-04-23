require 'socket'

server = TCPServer.new('127.0.0.1', 3000)
puts "Listening on 127.0.0.1:3000..."

loop do
  client = server.accept

  Thread.new(client) do |sock|
    begin
      while data = sock.readpartial(1024)
        puts "RECEIVED: #{data}"
      end
    rescue EOFError
      # connection closed
    ensure
      sock.close
    end
  end
end
