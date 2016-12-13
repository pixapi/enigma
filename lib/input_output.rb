# Goals: Read message_file and write encrypted_file,
#reads encrypted_file and writes decrypted_file
class InputOutput

  def initialize
    @key = KeyGenerator.new.key
    @date = Date.today
  end

  def read_file(file)
    file = ARGV[0]
    File.read(file).chomp
    #filename.close
  end

  def write_file(encrypted_message)
    encrypted_file = File.open(ARGV[1], "w")
    encrypted_file.write(encrypted_message)
    encrypted_file.close
    puts "Created 'encrypted.txt' with the key #{@key} and date #{@date}"
  end

  def read_file(filename)
    filename = ARGV[0]
    File.read(filename).chomp
    #filename.close
  end

  def write_file(text)
    written_file = File.open(ARGV[1], "w")
    written_file.write(text)
    written_file.close
    puts "Created 'decrypted.txt' with the key #{@key} and date #{@date}"
  end


end
