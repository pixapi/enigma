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

  def write_decrypted_file(file, decrypted_message)
    file = File.open(ARGV[1], "w")
    decrypted_message = decrypted_message.join
    key = ARGV[2]
    date = ARGV[3]
    file.write(decrypted_message)
    file.close
    puts "Created #{ARGV[1]} with the key #{key} and date #{date}"
  end

  def write_cracked_file(file, cracked_message, key)
    file = File.open(ARGV[1], "w")
    cracked_message = cracked_message.join
    date = ARGV[2]
    file.write(cracked_message)
    file.close
    puts "Created #{ARGV[1]} with the key #{key} and date #{date}"
  end

end
