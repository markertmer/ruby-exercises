class Lovisa
  attr_accessor :title, :characteristics

  def initialize(title, chars = ['brilliant'])
    @title = title
    @characteristics = chars
  end

  def brilliant?
    @characteristics.include? 'brilliant'
  end

  def kind?
    @characteristics.include? 'kind'
  end

  def say(phrase)
    "**;* #{phrase} **;*"
  end


end
