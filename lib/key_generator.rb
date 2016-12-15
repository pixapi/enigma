require 'pry'
class KeyGenerator
  attr_reader :key

  def create_key
    @key = (1..9).cycle(5).to_a.sample(5).join
    # puts key
  end
end

# kg = KeyGenerator.new
# kg.create_key
# WORKS!!!
