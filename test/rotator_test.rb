require 'minitest/autorun'
require 'minitest/pride'
require './lib/rotator.rb'

class RotatorTest < Minitest::Test
  def test_it_exists
    r = Rotator.new
    assert_instance_of Rotator, r
  end

  def test_it_has_a_class
    r = Rotator.new
    assert_equal Rotator, r.class
  end

  def test_rotations_have_two_digits
    r = Rotator.new
    assert_equal 2, r.rotations.to_s.length
  end

  def test_rotations_are_unique_each_time
    r_one = Rotator.new
    r_two = Rotator.new
    r_one.rotations
    r_two.rotations
    refute_equal r_one.rotation_b, r_two.rotation_b
  end

  def test_rotations_are_not_nil
    r = Rotator.new
    r.rotations
    refute_equal nil, r.rotation_a
  end

  def test_rotations_returns_fixnum
    r = Rotator.new
    r.rotations
    assert_equal Fixnum, r.rotation_c.class
  end

  def test_rotations
    r = Rotator.new
    r.rotations
    refute_equal r.rotation_a, r.rotation_b
  end
end
