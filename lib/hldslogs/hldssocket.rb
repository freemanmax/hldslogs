require "socket"

module Hldslogs
  class HldsSocket
    def initialize(ip_addr, port, bind_port)
       @socket = UDPSocket.new
       @socket.bind "", bind_port
       @socket.connect ip_addr, port
    end
    def close
       @socket.close
       return true
    end
    def receve_data
       until @socket == nil do
         data = @socket.recvfrom(1400)
         data[0]
       end
    end
  end
end
