require 'minitest/autorun'
require 'minitest/pride'
require './lib/Decrypt'

class DecryptTest < Minitest::Test

  def test_it_exist
    d = Decrypt.new()
    assert_instance_of Decrypt, d
  end

  def test_it_has_class
    d = Decrypt.new
    assert_equal Decrypt, d.class
  end

  def test_it_decrypts_a_letter
    skip
    d = Decrypt.new
    assert_equal "t", d.decrypt_message("d")
  end

  def test_it_can_decrypt_a_word
    skip
    d = Decrypt.new
    assert_equal "sunshine", d.decrypt_message("y0tynotk", 6)
  end

  def test_it_can_decrypt_another_word
    d = Decrypt.new
    assert_equal "hello", d.decrypt_message("xu114", rotation)
  end

  def test_it_can_decrypt_a_sentence
    skip
    d = Decrypt.new
    assert_equal "that would be great.", d.decrypt_message("zngzd2u0rjdhkdmxkgze", 6)
  end

  def test_it_can_decrypt_several_sentences
    skip
    d = Decrypt.new
    encrypted_message = "6un6k917yqkorkt4rn6lkvk9vyykorkn6k5pu11yko.ki2zllr0qll"
    decrypted_message = "that would be great. i will be at school by 8pm..end.."
    assert_equal decrypted_message, d.decrypt_message(encrypted_message, 52)
  end

end
