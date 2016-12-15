require './lib/input_output'

class Decrypt
  attr_reader :decryption,
              :key

  def initialize
    @decryption = []
  end

  def get_offset(date)
    date_squared = date.to_i**2
    @offset = date_squared.to_s[-4..-1].to_i
  end

  def rotations(key)
    @rotation_a = key[0..1].to_i + @offset.to_s[0].to_i
    @rotation_b = key[1..2].to_i + @offset.to_s[1].to_i
    @rotation_c = key[2..3].to_i + @offset.to_s[2].to_i
    @rotation_d = key[3..4].to_i + @offset.to_s[3].to_i
  end

  def get_map
    @characters = [("a".."z").to_a, ("0".."9").to_a, " ", ".", ","].flatten!
  end

  def decrypt_message(encrypted_file, key, date)
    get_offset(date)
    rotations(key)
    letters = encrypted_file.chars
    letters.each_with_index do |letter, index|
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
    negative_rotation = rotation * -1
    inverse_rotated_map(negative_rotation)
    @decryption << @map[letter]
  end

  def inverse_rotated_map(rotation)
    get_map
    decrypted_characters = @characters.rotate(rotation)
    @map = Hash[@characters.zip(decrypted_characters.zip)]
  end
end

i = InputOutput.new.read_message(ARGV[0])
d = Decrypt.new
d.decrypt_message(i, ARGV[2], ARGV[3])
o = InputOutput.new.write_decrypted_file(ARGV[1], d.decryption)
