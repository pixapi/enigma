require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset_calculator'

class OffsetCalculatorTest < Minitest::Test
  def test_it_exists
    oc = OffsetCalculator.new
    assert_instance_of OffsetCalculator, oc
  end

  def test_it_has_a_class
    oc = OffsetCalculator.new
    assert_equal OffsetCalculator, oc.class
  end

  def test_offset_output_is_not_nil
    oc = OffsetCalculator.new
    refute_equal nil, oc.get_offset.class
  end

  def test_offset_output_is_a_string
    oc = OffsetCalculator.new
    assert_equal String, oc.get_offset.class
  end

  def test_offset_has_four_digits
    oc = OffsetCalculator.new
    assert_equal 4, oc.get_offset.to_s.length
  end

  def test_multiple_offsets_are_the_same_when_created_on_same_date
    oc_one = OffsetCalculator.new
    oc_two = OffsetCalculator.new
    assert_equal oc_one.get_offset, oc_two.get_offset
  end
end
