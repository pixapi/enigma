require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'

class EncryptTest < Minitest::Test

  def setup
    @e = Encrypt.new
    @e.rotation_a = 94
    @e.rotation_b = 68
    @e.rotation_c = 34
    @e.rotation_d = 105
  end

  def test_it_exist
    skip
    # e = Encrypt.new
    assert_instance_of Encrypt, @e
  end

  def test_it_has_class
    skip
    # e = Encrypt.new
    assert_equal Encrypt, @e.class
  end

  def test_it_can_pass_through_rotator
    r = Rotator.new
    #WE SHOULD NOT TEST ROTATOR IN ENCRYPT TEST FILE
    assert_instance_of Rotator, r
  end

  #We can test that 1st character of output same as 5th for "aaaaaaa"
  #Now we have 4 tests at least and verify that fully works

  def test_encryptions_are_not_nil
    refute_equal nil, @e.encrypt_message("a").class
  end

  def test_encryptions_return_a_string
    assert_equal String, @e.encrypt_messages("a").class
  end

  def test_it_can_encrypt_a_letter
    skip
    # e = Encrypt.new
    assert_equal "b", @e.encrypt_message("a")
  end

  def test_it_can_encrypt_a_word
    # skip
    # @e = Encrypt.new
    assert_equal "ut qut q", @e.encrypt_message("aaaaaaaa")
  end

  def test_it_can_encrypt_another_word

    # e = Encrypt.new
    assert_equal ",56ig", @e.encrypt_message("Hello")
  end

  def test_it_can_encrypt_a_sentence
    skip
    # e = Encrypt.new
    assert_equal "zngzd2u0rjdhkdmxkgze", @e.encrypt_message("That would be great.")
  end

  def test_it_can_encrypt_several_sentences
    skip
    # e = Encrypt.new
    expected = "o3u35f84gzrl,t01,wai54r6d75h90rkot,mc 8v5xfh3.6i607n6u"
    assert_equal expected, @e.encrypt_message("That would be great. I will be at school by 8pm..end..")
  end
end
