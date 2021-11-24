class Direwolf
  attr_accessor :name, :home, :size, :starks_to_protect, :hww

  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hww = true
  end

  def protects(stark)
    @starks_to_protect << stark && stark.safe = true if @home == stark.location && @starks_to_protect.count < 2
    @hww = false if @starks_to_protect.count > 0
  end

  def leaves(stark)
    stark.safe = false
    @starks_to_protect.delete(stark)
    stark
  end

  def hunts_white_walkers?
    @hww
  end
end

class Stark
  attr_accessor :name, :location, :safe

  def initialize(name, location = 'Winterfell')
    @name = name
    @location = location
    @safe = false
  end

  def house_words
    'Winter is Coming'
  end

  def safe?
    @safe
  end
end
