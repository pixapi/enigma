require 'minitest/autorun'
require 'minitest/pride'
require './lib/Encrypt'

class EncryptTest < Minitest::Test

  def test_it_exist
    e = Encrypt.new
    assert_instance_of Encrypt, e
  end

  def test_it_has_class
    e = Encrypt.new
    assert_equal Encrypt, e.class
  end

  def test_it_can_encrypt_a_letter
    e = Encrypt.new
    assert_equal "d", e.encrypt("a", 3)
  end
  
  # def test_it_can_encrypt_a_word
  #   skip
  #   e = Encrypt.new
  #   assert_equal "y0tynotk", e.encrypt("aaaaaaaa", 6)
  # end
  #
  # def test_it_can_encrypt_another_word
  #   skip
  #   e = Encrypt.new
  #   assert_equal "xu114", e.encrypt("Hello", 16)
  # end
  #
  # def test_it_can_encrypt_a_sentence
  #   skip
  #   e = Encrypt.new
  #   assert_equal "zngzd2u0rjdhkdmxkgze", e.encrypt("That would be great.", 6)
  # end
  #
  # def test_it_can_encrypt_several_sentences
  #   skip
  #   e = Encrypt.new
  #   expected = "6un6k917yqkorkt4rn6lkvk9vyykorkn6k5pu11yko.ki2zllr0qll"
  #   assert_equal expected, e.encrypt("That would be great. I will be at school by 8pm..end..", 52)
  # end

end
