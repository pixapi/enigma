require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'

class KeyGeneratorTest < Minitest::Test
  def test_it_exist
    kg = KeyGenerator.new
    assert_instance_of KeyGenerator, kg
  end

  def test_it_has_class
    kg = KeyGenerator.new
    assert_equal KeyGenerator, kg.class
  end

  def test_it_generates_four_element_key
    kg = KeyGenerator.new
    kg.create_key
    assert_equal 5, kg.key.length
  end

  def test_key_is_unique
    kg = KeyGenerator.new
    key_1 = kg.create_key
    key_2 = kg.create_key
    refute_equal key_1, key_2
  end
end
