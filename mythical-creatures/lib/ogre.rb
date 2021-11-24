class Ogre
  attr_accessor :name, :home, :swings

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
  end

  def encounter(human)
    human.encounter(self)
  end

  def swing_at(human)
    @swings += 1
    human.ko = true if @swings % 2 == 0
  end

  def apologize(human)
    human.ko = false
    'Ope, my bad!'
  end
end


class Human
  attr_accessor :name, :encounter_counter, :ko

  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @ko = false
  end

  def encounter(ogre)
    @encounter_counter += 1
    ogre.swing_at(self) if @encounter_counter % 3 == 0
  end

  def notices_ogre?
    @encounter_counter % 3 == 0
  end

  def knocked_out?
    @ko
  end
end
