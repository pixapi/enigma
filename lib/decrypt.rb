# Goals:
# require 'character_map'
require './lib/encrypt'
require 'pry'
class Decrypt

  def initialize(message, key, date)
    @decryption = []
    @key = key
    @date = date
    @message = message
  end

  def get_offset
    date_squared = @date.to_i**2
    @offset = date_squared.to_s[-4..-1].to_i
    rotations
  end

  def rotations
    @rotation_a = @key[0..1].to_i + @offset.to_s[0].to_i
    @rotation_b = @key[1..2].to_i + @offset.to_s[1].to_i
    @rotation_c = @key[2..3].to_i + @offset.to_s[2].to_i
    @rotation_d = @key[3..4].to_i + @offset.to_s[3].to_i
  end

  def decrypt_message(encrypted_message, rotation)
    @e = Encrypt.new
    get_rotations
    letters = encrypted_message.chars
    letters.each_with_index do |letter, index|
      # binding.pry
      if index % 4 == 0
        decrypt_letter(letter, @rotation_a)
      elsif index % 4 == 1
        decrypt_letter(letter, @rotation_b)
      elsif index % 4 == 2
        decrypt_letter(letter, @rotation_c)
      elsif index % 4 == 3
        decrypt_letter(letter, @rotation_d)
      end
    end
    @decryption.join
  end

  def decrypt_letter(letter, rotation)
    binding.pry
    rotation = rotation * (-1)
    decrypted_map = inverse_rotated_map(rotation)
    @decryption << @map[letter]
  end

  def inverse_rotated_map
    characters = @e.character_map
    decrypted_characters = characters.rotate(@rotation)
    @map = Hash[decrypted_characters.zip(characters)]
  end
end
  # def cipher(rotation)
  #   characters = []
  #   characters = characters << ("a".."z").to_a << ("0".."9").to_a << [" ", ".", ","]
  #   characters = characters.flatten
  #   encrypted_characters = characters.rotate(rotation)
  #   map = Hash[characters.zip(encrypted_characters)]
  # end
  #
  # def decrypt_letter(letter, rotation)
  #   cipher_for_rotation = cipher(rotation)
  #   cipher(rotation).key(letter)
  # end
  #
  # def decrypt(encrypted_word, rotation)
  #   letters = encrypted_word.split("")
  #   decrypted_word = letters.collect do |letter|
  #     decrypt_letter(letter,rotation)
  #   end.join
  # end
