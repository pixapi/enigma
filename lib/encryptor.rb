# require 'character_map'

class Encryptor
  attr_reader :encryption

  def cipher(rotation)
    characters = []
    characters = characters << ("a".."z").to_a << ("0".."9").to_a << [" ", ".", ","]
    characters = characters.flatten
    encrypted_characters = characters.rotate(rotation)
    map = Hash[characters.zip(encrypted_characters)]
  end

  def encrypt_letter(letter,rotation)
    cipher_for_rotation = cipher(rotation)
    encrypted_letter = cipher_for_rotation[letter.downcase]
  end

  def encrypt(word, rotation)
    letters = word.downcase.split("")
    @encryption = []
    letters.each do |letter|
      @encryption << encrypt_letter(letter, rotation)
    end
    @encryption = encryption.join
  end

end
