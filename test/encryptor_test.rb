require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryptor'

class EncryptorTest < Minitest::Test
  def test_it_exist
    e = Encryptor.new
    assert_instance_of Encryptor, e
  end

  def test_it_has_class
    e = Encryptor.new
    assert_equal Encryptor, e.class
  end
  # def test_it_encrypts_a_letter
  # e = Encryptor.new
  # assert_equal "z", e.encrypt_letter("m", 13)
  # end

  # def test_it_encrypts_a_letter_with_other_rotation
  #   e = Encryptor.new
  #   assert_equal "u", e.encrypt_letter("m", 8)
  # end

  # def test_ot_encrypts_a_capital_letter
  #   e = Encryptor.new
  #   assert_equal "z", e.encrypt_letter("P", 10)
  # end

  def test_it_can_encrypt_a_word
    e = Encryptor.new
    assert_equal "y0tynotk", e.encrypt("sunshine", 6)
  end

  def test_it_can_encrypt_another_word
    e = Encryptor.new
    assert_equal "xu114", e.encrypt("Hello", 16)
  end

  def test_it_can_encrypt_a_sentence
    e = Encryptor.new
    assert_equal "zngzd2u0rjdhkdmxkgze", e.encrypt("That would be great.", 6)
  end

end
