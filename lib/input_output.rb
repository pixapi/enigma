require './lib/rotator'

class InputOutput

  def initialize
    @date = Time.now.strftime("%d%m%y")
  end

  def read_message#(file)
    file = File.open("./lib/message.txt", 'r')#(ARGV[0], "r")
    message = file.read
    puts message
    file.close
  end

  # def write_encrypted_message(encrypted_message, key)
  #   encrypted_file = File.open(ARGV[1], "w")
  #   encrypted_file.write(encrypted_message)
  #   encrypted_file.close
  #   puts "Created 'encrypted.txt' with the key #{key} and date #{@date}"
  # end
  #
  # def read_encrypted_message(filename)
  #   filename = ARGV[0]
  #   File.read(filename).chomp
  #   #filename.close??
  # end
  #
  # def write_decrypted_message(text)
  #   written_file = File.open(ARGV[1], "w")
  #   written_file.write(text)
  #   written_file.close
  #   puts "Created 'decrypted.txt' with the key #{@key} and date #{@date}"
  # end

end

io = InputOutput.new
io.read_message
# io.write_encrypted_message
