require './lib/offset_calculator'
require './lib/rotator'
require './lib/input_output'
require 'pry'

class Encrypt

  attr_reader :encryption
              # :rotation_a,
              # :rotation_b,
              # :rotation_c,
              # :rotation_d,
  def initialize(file_1, file_2)
    file_1 =
    file_2 =
    rotation = Rotator.new.rotations
  end

  def get_map
    characters = [("a".."z").to_a, ("0".."9").to_a, " ", ".", ","].flatten!
  end

  def get_rotated_map(rotation)
    character_map = CharacterMap.new
    encrypted_characters = character_map.rotated_map(rotation)
    encrypted_characters = @characters.rotate(rotation)
    @map = Hash[@characters.zip(encrypted_characters)]
  end

  #Do read/write funtion need to be in this file or where,
  #how to connect them

  #In Offset initialize what can we do so we can feed key and date or get it from program)

  def encrypt_message(message)
    # activate_offsets
    # get_rotations
    encryption = []
    letters = message.downcase.chars
    letters.each_with_index do |letter, index|
      if index % 4 == 0
        encryption << encrypt_letter(letter, @rotation_a)
      elsif index % 4 == 1
        encryption << encrypt_letter(letter, @rotation_b)
      elsif index % 4 == 2
        encryption << encrypt_letter(letter, @rotation_c)
      elsif index % 4 == 3
        encryption << encrypt_letter(letter, @rotation_d)
      end
    end
    encryption.join
  end

  def encrypt_letter(letter, rotation)
    binding.pry
    encrypted_map = get_rotated_map(rotation)
    @map[letter.downcase]
  end

end

e = Encrypt.new
e.encrypt_message
puts ****
