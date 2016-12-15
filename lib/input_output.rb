require './lib/rotator'
require 'pry'

class InputOutput
  def initialize
    @date = Time.now.strftime("%d%m%y")
  end

  def read_message(file)
    File.open(file).read.chop
  end

  def write_encrypted_file(file, encrypted_message, key)
    encrypted_file = File.open(ARGV[1], "w")
    encrypted_message = encrypted_message.join
    encrypted_file.write(encrypted_message)
    encrypted_file.close
    puts "Created #{ARGV[1]} with the key #{key} and date #{@date}"
  end

end
