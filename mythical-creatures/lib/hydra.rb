class Hydra
  attr_accessor :name, :heads

  def initialize(name, heads = 5)
    @name = name
    @heads = heads
  end

end


class Hero
  attr_accessor :name, :sword, :chops, :cauts

  def initialize(name, sword = 'bronze')
    @name = name
    @sword = sword
    @chops = 0
    @cauts = 0
  end

  def chop(hyd)
    if @sword == 'golden'
      hyd.heads -= 1
    elsif hyd.heads == 1
    else
      hyd.heads += 1
      @chops += 1
      @cauts = 0
    end
  end

  def cauterize(hyd)
    if @chops > 0 && @cauts == 0 && sword == 'bronze'
      @cauts = 1
      hyd.heads -= 2
    else
    end
  end
end

class Goddess
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def give_sword_to(hero)
    hero.sword = 'golden'
  end
end
