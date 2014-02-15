require "socket"

class Graphite_sender
  def initialize(host, port = 2003, type = 'tcp')
   
    @type = type

    if @type == 'tcp'
      @socket = TCPSocket.new(host, port)
    else
      @socket = UDPSocket.new
      @socket.connect(host, port)
    end
  end

  def send_measure(stat, value, timestamp = nil)
    if timestamp == nil
      timestamp = Time.now.to_i
    end
    send_to_socket("#{stat} #{value} #{timestamp}")
  end

  private

  def send_to_socket(message)
    begin
      if @type == 'tcp'
        @socket.puts(message)
      else
        @socket.send(message, 0)
      end
    rescue Exception => e  
      puts e.message  
      puts e.backtrace.inspect
    end
  end
end
