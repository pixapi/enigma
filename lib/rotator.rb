require './lib/offset_calculator'

class Rotator
  attr_reader :key,
              :rotation_a,
              :rotation_b,
              :rotation_c,
              :rotation_d

  def initialize
    @key = KeyGenerator.new.create_key
    @offset = OffsetCalculator.new.get_offset
  end

  def rotations
    @rotation_a = @key[0..1].to_i + @offset[0].to_i
    @rotation_b = @key[1..2].to_i + @offset[1].to_i
    @rotation_c = @key[2..3].to_i + @offset[2].to_i
    @rotation_d = @key[3..4].to_i + @offset[3].to_i
  end
end

# r = Rotator.new
# r.rotations
# WORKS!!!
