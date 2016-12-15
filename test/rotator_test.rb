require 'minitest/autorun'
require 'minitest/pride'
require './lib/rotator.rb'

class RotatorTest < Minitest::Test
  def test_it_exists
    r = Rotator.new
    assert_instance_of Rotator, r
  end

  def test_key_can_pass_through
    kg = KeyGenerator.new
    assert_instance_of KeyGenerator, kg
  end

  def test_offset_calculator_can_pass_through
    oc = OffsetCalculator.new
    assert_instance_of OffsetCalculator, oc
  end

  def test_it_has_a_class
    r = Rotator.new
    assert_equal Rotator, r.class
  end

  def test_rotations_have_two_digits
    r = Rotator.new
    assert_equal 2, r.rotations.to_s.length
  end

  def test_rotations_are_random_each_time
    r_one = Rotator.new
    r_two = Rotator.new
    refute_equal r_one.rotations, r_two.rotations
  end

  def test_rotations_are_not_nil
    r = Rotator.new
    refute_equal nil, r.rotations.class
  end

  def test_rotations_returns_fixnum
    r = Rotator.new
    assert_equal Fixnum, r.rotations.class
  end

  def test_rotations_repeat_every_four_characters
  skip
    r= Rotator.new
   #here the assert or equal statement
  end

  def test_rotations
    skip
    r_one = Rotator.new
    refute_equal r_one.rotation_a, r_one.rotation_b
  end
end
