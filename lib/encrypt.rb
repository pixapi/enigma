require './lib/rotator'
require './lib/input_output'
require 'pry'

class Encrypt

  attr_reader   :encryption
  attr_accessor :rotation_a,
                :rotation_b,
                :rotation_c,
                :rotation_d

  def initialize
    @rotator = Rotator.new
    @key = @rotator.key #HOW CAN I PASS THIS INFO TO INPUT_OUTPUT.RB???
    @encryption = []
    # @message = InputOutput.new.read_message(ARGV[0])
  end

  def get_rotations
    @rotator.rotations
    @rotation_a = @rotator.rotation_a
    @rotation_b = @rotator.rotation_b
    @rotation_c = @rotator.rotation_c
    @rotation_d = @rotator.rotation_d
  end

  def get_map
    @characters = [("a".."z").to_a, ("0".."9").to_a, " ", ".", ","].flatten!
  end

  def encrypt_message(message)
    get_rotations
    letters = message.downcase.chars
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
    puts encryption.join
    # binding.pry
    # creates_file(encryption)
  end

  def encrypt_letter(letter, rotation)
    #encrypted_map =
    get_rotated_map(rotation)
    @encryption << @map[letter.downcase]
  end

  def get_rotated_map(rotation)
    get_map
    # character_map = CharacterMap.new
    encrypted_characters = @characters.rotate(rotation)
    @map = Hash[@characters.zip(encrypted_characters)]
  end

  # def creates_file(encrypted_message, key)
  #   @input_output.write_file#(ARGV[1], @rotator.key)
  # end
end

e = Encrypt.new
i = InputOutput.new.read_message(ARGV[0])
e.encrypt_message(i)
