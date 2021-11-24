require_relative '../lib/bag'

class TrickOrTreater
  attr_reader :dressed_up_as, :bag, :candy_count

  def initialize(costume)
    @dressed_up_as = costume
    @bag = Bag.new
#    @candy_count = @bag.count
  end

  def has_candy?
    @bag.count > 0
  end

  def candy_count
    @bag.count
  end

  def eat
    bag.candies.pop
  end

end
