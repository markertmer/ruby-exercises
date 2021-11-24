class Pirate

  attr_reader :name, :job, :curse, :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @curse = 0
    @booty = 0
  end

  def cursed?
    @curse >= 3
  end

  def commit_heinous_act
    @curse += 1
  end

  def robs_ship
    @booty += 100
  end

end
