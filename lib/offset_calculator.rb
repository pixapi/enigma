require './lib/key_generator'

class OffsetCalculator
  attr_reader :rotation_a
  def initialize
    @key = KeyGenerator.new.create_key
  end

  def get_offset
    date = Time.now.strftime("%d%m%y")
    date_squared = date.to_i**2
    @offset = date_squared.to_s[-4..-1].to_i
  end

  def rotations
    @rotation_a = @key[0..1].to_i + @offset[0]
    @rotation_b = @key[1..2].to_i + @offset[1]
    @rotation_a = @key[2..3].to_i + @offset[2]
    @rotation_a = @key[3..4].to_i + @offset[3]
  end
end
