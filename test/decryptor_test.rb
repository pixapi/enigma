require 'minitest/autorun'
require 'minitest/pride'
require './lib/decryptor'

class DecryptorTest < Minitest::Test
  
  def test_it_exist
    d = Decryptor.new
    assert_instance_of Decryptor, d
  end

  def test_it_has_class
    d = Decryptor.new
    assert_equal Decryptor, d.class
  end

  def test_it_decrypts_a_letter
    e = Decryptor.new
    assert_equal "t", e.decrypt("d", 23)
  end

  def test_it_can_decrypt_a_word
    e = Decryptor.new
    assert_equal "sunshine", e.decrypt("y0tynotk", 6)
  end

  def test_it_can_decrypt_another_word
    e = Decryptor.new
    assert_equal "hello", e.decrypt("xu114", 16)
  end

  def test_it_can_decrypt_a_sentence
    e = Decryptor.new
    assert_equal "that would be great.", e.decrypt("zngzd2u0rjdhkdmxkgze", 6)
  end

  def test_it_can_decrypt_several_sentences
    e = Decryptor.new
    encrypted_message = "6un6k917yqkorkt4rn6lkvk9vyykorkn6k5pu11yko.ki2zllr0qll"
    decrypted_message = "that would be great. i will be at school by 8pm..end.."
    assert_equal decrypted_message, e.decrypt(encrypted_message, 52)
  end

end
