require './lib/key_generator'
require 'pry'

class OffsetCalculator
  attr_reader :offset

  def initialize #(key, date)
    @date = Time.now.strftime("%d%m%y")
  end

  def get_offset
    date_squared = @date.to_i**2
    offset = date_squared.to_s[-4..-1]
    # puts offset
  end

end

# oc = OffsetCalculator.new
# oc.get_offset
# WORKS!!!
