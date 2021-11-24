class Medusa

  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.zap #unless @statues.count >= 3
    @statues << victim #unless @statues.count >= 3
    @statues[0].unzap unless @statues.count <= 3
    @statues.shift unless @statues.count <= 3

  end

end

class Person

  attr_reader :name, :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def zap
    @stoned = true
  end

  def unzap
    @stoned = false
  end

  def stoned?
    @stoned
    #medusa.statues.include? @name.to_s
  end
end
