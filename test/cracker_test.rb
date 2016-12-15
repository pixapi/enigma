require 'minitest/autorun'
require 'minitest/pride'
require './lib/cracker'


class CrackerTest < Minitest::Test

  def test_it_exists
    c = Cracker.new(@message, @key, @date)
    assert_instance_of Cracker, c
  end

  def test_it_has_a_class
    c = Cracker.new(@message, @key, @date)
    assert_equal Cracker, c.crack
  end

end
