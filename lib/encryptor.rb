require './lib/offset_calculator'
require 'pry'

class Encryptor
  def initialize
    @oc = OffsetCalculator.new
  end

  def character_map
    @characters = []
    @characters = @characters << ("a".."z").to_a << ("0".."9").to_a << [" ", ".", ","]
    binding.pry
    @characters = @characters.flatten
    binding.pry
  end

  def rotated_map(rotation)
    encrypted_characters = @characters.rotate(rotation)
    map = Hash[characters.zip(encrypted_characters)]
  end

  def get_rotations
    @oc.get_offset
    @oc.rotations
    @rotation_a = @oc.rotation_a
    @rotation_b = @oc.rotation_b
    @rotation_c = @oc.rotation_c
    @rotation_d = @oc.rotation_d
  end

  def define_rotations(message)
    letters = message.downcase.chars
    binding.pry
    letters.each_with_index do |letter, index|
      if index % 4 == 0
        encrypt(letter, @rotation_a)
      elsif index % 4 == 1
        encrypt(letter, @rotation_b)
      elsif index % 4 == 2
        encrypt(letter, @rotation_c)
      elsif index % 4 == 3
        encrypt(letter, @rotation_d)
      end
    end
  end

  def encrypt(letter, rotation)
    encrypted_map = rotated_map(rotation)
    binding.pry
    encryption = []
    encryption << encrypted_map[letter.downcase]
    binding.pry
    encryption = encryption.join
    puts encryption
  end
end

e = Encryptor.new
e.get_offset
e.rotations
e.character_map
e.define_rotations("We hope this works.")
