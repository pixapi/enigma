# require 'character_map'

class Decryptor

  def cipher(rotation)
    characters = []
    characters = characters << ("a".."z").to_a << ("0".."9").to_a << [" ", ".", ","]
    characters = characters.flatten
    encrypted_characters = characters.rotate(rotation)
    map = Hash[characters.zip(encrypted_characters)]
  end

  def decrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher(rotation).key(letter)
  end

  def decrypt(encrypted_word, rotation)
    letters = encrypted_word.split("")
    decrypted_word = letters.collect do |letter|
      decrypt_letter(letter,rotation)
    end.join
  end
  
end
