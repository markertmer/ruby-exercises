class Dragon

  attr_reader :name, :color, :rider, :stomach

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @stomach = 0
  end

  def hungry?
    @stomach < 3
  end

  def eat
    @stomach += 1
  end

end
