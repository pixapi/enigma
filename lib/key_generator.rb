require 'pry'
class KeyGenerator
  attr_reader :key
  def initialize
    @key = key
  end

  def create_key
    @key = rand(99999).to_s
  end
end
