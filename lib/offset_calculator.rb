#GOAL: Get date, square it, produce 4 offsets, produce 4 rotations
# from key, create 4 final rotations (each key + each correspondent offset)
require './lib/key_generator'

class OffsetCalculator
  attr_reader :rotation_a,
              :rotation_b,
              :rotation_c,
              :rotation_d,
              :offset,
              :key

  def initialize
    @key = KeyGenerator.new.create_key
  end

  def get_offset
    date = Time.now.strftime("%d%m%y")
    date_squared = date.to_i**2
    @offset = date_squared.to_s[-4..-1].to_i
    rotations
  end

  def rotations
    @rotation_a = @key[0..1].to_i + @offset.to_s[0].to_i
    @rotation_b = @key[1..2].to_i + @offset.to_s[1].to_i
    @rotation_c = @key[2..3].to_i + @offset.to_s[2].to_i
    @rotation_d = @key[3..4].to_i + @offset.to_s[3].to_i
  end
end
