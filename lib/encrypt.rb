# Goals: Contains character_map, calls **********

require './lib/offset_calculator'
require 'pry'

class Encrypt
  attr_reader :encryption

  def initialize
    @oc = OffsetCalculator.new
  end

  def character_map
    #We create the standard character map "a to ,"
    @characters = []
    @characters = @characters << ("a".."z").to_a << ("0".."9").to_a << [" ", ".", ","]
    @characters = @characters.flatten
  end

  def encrypt_message(message)
    #We break the message into characters and send them to encrypt_letter with certain rotation depending on their index
    letters = message.downcase.chars
    letters.each_with_index do |letter, index|
      if index % 4 == 0
        encrypt_letter(letter, @oc.rotation_a)
      elsif index % 4 == 1
        encrypt_letter(letter, @oc.rotation_b)
      elsif index % 4 == 2
        encrypt_letter(letter, @oc.rotation_c)
      elsif index % 4 == 3
        encrypt_letter(letter, @oc.rotation_d)
      end
    end
  end

  def encrypt_letter(letter, rotation)
    #We pass the rotation to created rotated_map and we found the correspondent letter (value) in that array
    encrypted_map = rotated_map(rotation)
    encryption = []
    encryption << encrypted_map[letter.downcase]
    encryption = encryption.join
    puts encryption
  end

  def rotated_map(rotation)
    #We create the rotated_map when we pass the rotation
    encrypted_characters = @characters.rotate(rotation)
    map = Hash[characters.zip(encrypted_characters)]
  end

  # => Do we need to call the below methods to obtain the rotation numbers from OffsetCalculator?
  #   @oc.get_offset
  #   @oc.rotations
end

# e = Encrypt.new
# oc = OffsetCalculator
# oc.get_offset
# oc.rotations
# e.character_map
# e.define_rotations("We hope this works.")
