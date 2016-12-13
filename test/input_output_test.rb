require 'minitest/autorun'
require 'minitest/pride'
require './lib/file_runner'

class InputOutputTest < Minitest::Test
  def test_it_exists
    oc = OffsetCalculator.new
    assert_instance_of OffsetCalculator, oc
  end

  def test_it_has_a_class
    oc = OffsetCalculator.new
    assert_equal OffsetCalculator, oc.class
  end

  def test_it_opens_a_file
    f = InputOutput.new
    result = f.read_file("message.txt")
    refute result.closed? , result
  end
end
