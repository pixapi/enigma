require 'minitest/autorun'
require 'minitest/pride'
require './lib/input_output'

class InputOutputTest < Minitest::Test
  def test_it_exists
    input_output = InputOutput.new
    assert_instance_of InputOutput, input_output
  end

  def test_it_has_a_class
    input_output = InputOutput.new
    assert_equal InputOutput, input_output.class
  end

  def test_it_reads_a_file
    input_output = InputOutput.new
    result = input_output.read_message("./test/message.txt")
    expected = "The rain in Spain stays mainly in the plain..end.."
    assert_equal expected, result
  end

  def test_it_reads_a_second_file
    input_output = InputOutput.new
    result = input_output.read_message("./test/message_test.txt")
    expected = "Hello!..end.."
    assert_equal expected, result
  end
end
