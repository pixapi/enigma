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

  def initialize #(key, date)
    @date = Time.now.strftime("%d%m%y")
    @key = KeyGenerator.create_key
  end

  def get_offset
    date_squared = @date.to_i**2
    offset = date_squared.to_s.chars[-4..-1]
    rotations(offset)
  end

end


# OffsetCalculator.new('12345', '12142016').get_offset
