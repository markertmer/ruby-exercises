class Werewolf

  attr_reader :name, :location, :state, :hungry

  def initialize(name, location = 'London')
    @name = name
    @location = location
    @state = 0
    @hungry = false
  end

  def human?
    @state.even?
  end

  def wolf?
    @state.odd?
  end

  def hungry?
    @hungry
  end

  def change!
    @state += 1
    @hungry = true unless @state.even?
  end

  def consume(victim)
    victim.status = :dead unless @state.even? || @hungry == false
    @hungry = false
  end

end
