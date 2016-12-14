#GOAL: Generates 5-digits random key

class KeyGenerator
  attr_reader :key

  def create_key
    # rand(99999).to_s
    (1..9).cycle(5).to_a.sample(5)
    #THIS IS AN ARRAY
  end
end
