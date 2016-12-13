# Goals: Contains character_map, calls **********

require './lib/offset_calculator'
require 'pry'

class Encrypt
  attr_reader :encryption

  def initialize
    @oc = OffsetCalculator.new
    @encryption = []
  end

  def character_map
    #We create the standard character map "a to ,"
    @characters = [("a".."z").to_a, ("0".."9").to_a, " ", ".", ","].flatten!

  end

  def activate_offsets
    @oc.get_offset
    @oc.rotations
  end

  def get_rotations
    @rotation_a = @oc.rotation_a
    @rotation_b = @oc.rotation_b
    @rotation_c = @oc.rotation_c
    @rotation_d = @oc.rotation_d
  end

  def encrypt_message(message)
    #We break the message into characters and send them to encrypt_letter with certain rotation depending on their index
    activate_offsets
    get_rotations
    # binding.pry
    letters = message.downcase.chars
    # binding.pry
    letters.each_with_index do |letter, index|
      if index % 4 == 0
        encrypt_letter(letter, @rotation_a)
      elsif index % 4 == 1
        encrypt_letter(letter, @rotation_b)
      elsif index % 4 == 2
        encrypt_letter(letter, @rotation_c)
      elsif index % 4 == 3
        encrypt_letter(letter, @rotation_d)
      end
    end
    encryption.join
  end

  def encrypt_letter(letter, rotation)
    #We pass the rotation to created rotated_map and we found the correspondent letter (value) in that array
    # binding.pry
    encrypted_map = rotated_map(rotation)
    # binding.pry

    # binding.pry
    @encryption << @map[letter.downcase]

    encryption
  end

  def rotated_map(rotation)
    character_map
    #We create the rotated_map when we pass the rotation
    encrypted_characters = @characters.rotate(rotation)
    # binding.pry
    @map = Hash[@characters.zip(encrypted_characters)]
    # binding.pry
  end

end

# e = Encrypt.new
# oc = OffsetCalculator
# oc.get_offset
# oc.rotations
# e.character_map
# e.define_rotations("We hope this works.")
