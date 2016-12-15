require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def test_it_exist
    e = Enigma.new
    assert_instance_of Enigma, e
  end

  def test_it_has_class
    e = Enigma.new
    assert_equal Enigma, e.class
  end

  def test_it_can_encrypt_message
    e = Enigma.new
    assert_equal "jtl 6", e.encrypt("hello")
  end

  def test_it_can_decrypt_message
    e = Enigma.new
    assert_equal "hello", e.decrypt("jtl 6")
  end

  def test_it_can_crack_message
    e = Enigma.new
    assert_equal "hello", e.crack(("jtl 6"))
  end
end
