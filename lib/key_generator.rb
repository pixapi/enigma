#GOAL: Generates 5-digits random key

class KeyGenerator
  attr_reader :key

  def create_key
    @key = rand(99999).to_s
  end
end
# Maybe is better do the 1..9 shuffle so we don't get a 0
# as starting number of the key, if not it accounts 4 digits
# length instead of 5
