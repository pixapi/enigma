require './lib/encrypt'
require './lib/decrypt'
# require './lib/crack'

class Enigma
  def initialize
    @encryptor = Encrypt.new
    @decryptor = Decrypt.new
  end

  def encrypt(message)
    @encryptor.encrypt_message(message)
  end

  def decrypt(message, key, date = Time.now.strftime("%d%m%y"))
    @decryptor.decrypt_message(message, key, date)
  end

  # def crack
  #   @cracker.crack(message)
  # end
end
