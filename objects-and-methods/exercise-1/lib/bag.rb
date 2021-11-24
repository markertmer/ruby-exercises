class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies.count == 0
  end

  def count
    @candies.count
  end

  def contains?(candy)
    @candies.include?(candy)
  end
end
