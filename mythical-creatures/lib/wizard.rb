class Wizard

  attr_reader :name, :bearded, :rested

  def initialize(
    name,
    bearded: true,
    rested: 0
  )
  @name = name
  @bearded = bearded
  @rested = rested
  end

  def bearded?
    @bearded
  end

  def rested?
    @rested < 3
  end

  def incantation(spell)
    "sudo " + spell
  end

  def cast
    @rested += 1
    "MAGIC MISSILE!"
  end

end
