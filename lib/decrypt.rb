require 'pry'
class Decrypt
  attr_reader :decryption
  def initialize(encrypted_file, key, date)
    @decryption = []
    @key = key
    @date = date
    @encrypted_message = encrypted_file
    #InputOutput.new.read_encrypted_message
  end

  def get_offset #How can we use the argument data and get rotation without initialize key and offset classes
    date_squared = @date.to_i**2
    @offset = date_squared.to_s[-4..-1].to_i

    binding.pry
  end

  def rotations
    @rotation_a = @key[0..1].to_i + @offset.to_s[0].to_i
    @rotation_b = @key[1..2].to_i + @offset.to_s[1].to_i
    @rotation_c = @key[2..3].to_i + @offset.to_s[2].to_i
    @rotation_d = @key[3..4].to_i + @offset.to_s[3].to_i
    binding.pry
  end

  def get_map
    @characters = [("a".."z").to_a, ("0".."9").to_a, " ", ".", ","].flatten!
  end

  def decrypt_message
    get_offset
    rotations
    letters = @encrypted_message.chars
    binding.pry
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
    binding.pry
  end

  def decrypt_letter(letter, rotation)
    negative_rotation = rotation * -1
    binding.pry
    # decrypted_map =
    inverse_rotated_map(negative_rotation)
    @decryption << @map[letter]
  end

  def inverse_rotated_map(rotation)
    get_map
    decrypted_characters = @characters.rotate(rotation)
    binding.pry
    @map = Hash[@characters.zip(decrypted_characters.zip)]
    binding.pry
  end
end

decrypt = Decrypt.new("6edaa", "17261", 141216)

decrypt.decrypt_message
