require './lib/rotator'

class InputOutput
  def initialize
    @date = Time.now.strftime("%d%m%y")
  end

  def read_message(file)
    File.open(file).read.chop
  end

  def write_encrypted_file(encrypted_message, key)
    File.open(ARGV[1], "w")
    encrypted_file.write(encrypted_message)
    encrypted_file.close
    puts "Created 'encrypted.txt' with the key #{key} and date #{@date}"
  end

  def read_encrypted_file(filename)
    filename = ARGV[0]
    File.read(filename).chomp
    #filename.close??
  end

  def write_decrypted_file(text)
    written_file = File.open(ARGV[1], "w")
    written_file.write(text)
    written_file.close
    puts "Created 'decrypted.txt' with the key #{@key} and date #{@date}"
  end

### WE SHOULD BE PUTTING HERE CRACKING
end
