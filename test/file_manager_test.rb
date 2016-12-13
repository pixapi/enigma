require 'minitest/autorun'
require 'minitest/pride'
require './lib/file_manager'

class FileManagerTest < Minitest::Test

  def test_it_exist
    e = FileManager.new
    assert_instance_of FileManager, e
  end

  def test_it_has_class
    e = FileManager.new
    assert_equal FileManager, e.class
  end

end
