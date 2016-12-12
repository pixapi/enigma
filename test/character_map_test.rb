require 'minitest/autorun'
require 'minitest/pride'
require './lib/character_map'

class CharacterMapTest < Minitest::Test
  def test_it_exist
    cm = CharacterMap.new
    assert_instance_of CharacterMap, cm
  end

  def test_it_has_class
    cm = CharacterMap.new
    assert_equal CharacterMap, cm.class
  end

  def test_it_can_convert_a_letter
    cm = CharacterMap.new
    assert_equal "o", cm.cipher(5)
  end

  def test_it_can_convert_another_letter
    cm = CharacterMap.new
    assert_equal "z", cm.cipher(17)
  end
end
