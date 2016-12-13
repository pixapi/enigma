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
    skip
    e = Encrypt.new
    assert_equal "d", e.encrypt_message("a")
  end

  def test_it_can_encrypt_a_word
    e = Encrypt.new
    assert_equal "ut qut q", e.encrypt_message("aaaaaaaa")
  end

  def test_it_can_encrypt_another_word
    e = Encrypt.new
    assert_equal ",56ig", e.encrypt_message("Hello")
  end

  def test_it_can_encrypt_a_sentence
    skip
    e = Encrypt.new
    assert_equal "zngzd2u0rjdhkdmxkgze", e.encrypt_message("That would be great.")
  end

  def test_it_can_encrypt_several_sentences
    e = Encrypt.new
    expected = "o3u35f84gzrl,t01,wai54r6d75h90rkot,mc 8v5xfh3.6i607n6u"
    assert_equal expected, e.encrypt_message("That would be great. I will be at school by 8pm..end..")
  end

end
