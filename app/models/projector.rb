require 'serialport'

class Projector
  
  def self.on
    serialport.write "PWR ON\r\n"
  end

  def self.off
    serialport.write "PWR OFF\r\n"
  end

  private

  def self.serialport
    @serialport ||= SerialPort.new "/dev/tty.usbserial", 9600
  rescue Errno::ENOENT
    raise CableDisconnected
  end

  class CableDisconnected < Exception; end
  
end
