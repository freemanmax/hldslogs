# encoding: US-ASCII
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
        paket = @socket.recvfrom(1400)
        data = paket[0]
        data.gsub!("\xFF\xFF\xFF\xFFlog ", "")
        data.gsub!("\n\x00", "")
      end
    end
  end
end

