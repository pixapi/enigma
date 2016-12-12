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

  def test_it_can_encrypt_a_letter
    e = Encryptor.new
    assert_equal "d", e.encrypt("t", 23)
  end

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

  def test_it_can_encrypt_several_sentences
    e = Encryptor.new
    expected = "6un6k917yqkorkt4rn6lkvk9vyykorkn6k5pu11yko.ki2zllr0qll"
    assert_equal expected, e.encrypt("That would be great. I will be at school by 8pm..end..", 52)
  end

end
