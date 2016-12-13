require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset_calculator'
require 'pry'
# require './lib/key_generator'

class OffsetCalculatorTest < Minitest::Test
  def test_it_exists
    oc = OffsetCalculator.new
    assert_instance_of OffsetCalculator, oc
  end

  def test_it_has_a_class
    oc = OffsetCalculator.new
    assert_equal OffsetCalculator, oc.class
  end

  def test_rotations_have_two_digits
    oc = OffsetCalculator.new
    oc.get_offset
    oc.rotations
    assert_equal 2, oc.rotation_a.to_s.length
  end
end
