# encoding: US-ASCII
require "socket"

class HldsSocket
  def initialize(ip_addr, port, bind_port)
     @socket = UDPSocket.new
     @socket.bind "", bind_port
     @socket.connect ip_addr, port
  end
  def close
     @socket.close
     @socket = nil
     return true
  end
  def receve_data       
     paket = @socket.recvfrom(1400)
     data = paket[0]
     data.gsub!("\xFF\xFF\xFF\xFFlog ", "")
     data.gsub!("\n\x00", "")
  end
  def socket
     @socket
  end
end


