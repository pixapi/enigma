require 'minitest/autorun'
require 'minitest/pride'
require './lib/file_input_output'

class FileInputOutputTest < Minitest::Test
  
  def test_it_exist
    f = FileInputOutput.new
    assert_instance_of FileInputOutput, f
  end

  def test_it_has_class
    f = FileInputOutput.new
    assert_equal FileInputOutput, f.class
  end

end