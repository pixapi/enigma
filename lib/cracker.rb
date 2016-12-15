require './lib/decrypt'


class Cracker

  def initialize(message, key, date)
    @message = message
    @date = date
  end

  def crack
    decryptor = Decrypt.new(@message, @key.to_s, @date)
    last_characters = decryptor.decryption[-7..-1]
      while last_characters != "..end.."
        99999.times do |i|
        decryptor = Decrypt.new(@message, i.to_s, @date)
        decryptor.decrypt_message
      end
    return puts "Created ' ' with the cracked key #{@key.to_s} and the date #{@date}"
  end
end

end

c = Cracker.new(@message,@key, 141216)
c.crack
