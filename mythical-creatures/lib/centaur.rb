class Centaur

  attr_reader :name, :breed, :cranky, :standing, :laying, :sick

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = 0
    @standing = true
    @sick = false
  end

  def shoot
    if @cranky >= 3 || @laying == true
      'NO!'
    else
      @cranky += 1
      'Twang!!!'
    end
  end

  def run
    if @laying == true
      'NO!'
    else
      @cranky += 1
      'Clop clop clop clop!'
    end
  end

  def sleep
    if @standing == true
      'NO!'
    else
      @cranky = 0
      'zzzzzzzzz'
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drink_potion
    if @standing == false
      'NO!'
    elsif @cranky == 0
      @sick = true
    else
      @cranky = 0
    end
  end

  def laying?
    @laying
  end

  def cranky?
    @cranky >= 3
  end

  def standing?
    @standing
  end

  def sick?
    @sick
  end

end
