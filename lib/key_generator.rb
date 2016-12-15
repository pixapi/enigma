class KeyGenerator
  attr_reader :key

  def create_key
    @key = (1..9).cycle(5).to_a.sample(5).join
  end
end
