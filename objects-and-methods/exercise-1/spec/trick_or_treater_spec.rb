require 'rspec'
require_relative '../lib/costume'
require_relative '../lib/bag'
require_relative '../lib/candy'
require_relative '../lib/trick_or_treater'

RSpec.describe TrickOrTreater do
  it 'wears a costume' do
#had to add .style
    costume = Costume.new('Cowboy').style
    trick_or_treater = TrickOrTreater.new(costume)
    expect(trick_or_treater.dressed_up_as).to eq('Cowboy')
  end

  it 'can have a different costume' do
#had to add .style
    trick_or_treater = TrickOrTreater.new(Costume.new('Alien').style)

    expect(trick_or_treater.dressed_up_as).to eq('Alien')
  end

  it 'has an empty bag by default' do
    trick_or_treater = TrickOrTreater.new(Costume.new("Alien"))

    expect(trick_or_treater.bag.empty?).to be true
  end

  it 'has an empty bag, so no candies' do
    trick_or_treater = TrickOrTreater.new(Costume.new("Knight"))

    expect(trick_or_treater.has_candy?).to be false
  end

  it 'can get candies' do
    trick_or_treater = TrickOrTreater.new(Costume.new('Spaceship Mechanic'))
#added .candies
    trick_or_treater.bag.candies << Candy.new('Gummy bears')

    expect(trick_or_treater.has_candy?).to be true
  end

  it 'it can count candies' do
    trick_or_treater = TrickOrTreater.new(Costume.new('Spaceship Mechanic'))

    expect(trick_or_treater.candy_count).to eq(0)
#added .candies
    trick_or_treater.bag.candies << Candy.new('Gummy bears')
    trick_or_treater.bag.candies << Candy.new("Gummy worms")
    expect(trick_or_treater.candy_count).to eq(2)
  end

  it 'can eat candies' do
    trick_or_treater = TrickOrTreater.new(Costume.new("Baron"))
#added .candies x3
    trick_or_treater.bag.candies << Candy.new("Gummy worms")
    trick_or_treater.bag.candies << Candy.new("Liquorice")
    trick_or_treater.bag.candies << Candy.new("Salty Serpents")

    expect(trick_or_treater.candy_count).to eq(3)
    trick_or_treater.eat

    expect(trick_or_treater.candy_count).to eq(2)
    trick_or_treater.eat

    expect(trick_or_treater.candy_count).to eq(1)
    trick_or_treater.eat

    expect(trick_or_treater.candy_count).to eq(0)
  end
end
