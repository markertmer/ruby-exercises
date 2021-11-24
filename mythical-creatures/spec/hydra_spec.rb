require 'rspec'
require './lib/hydra'

RSpec.describe Hydra do
  it 'has a name' do
    hydra = Hydra.new('Lernaean')
    expect(hydra.name).to eq('Lernaean')
  end

  it 'has five heads by default' do
    hydra = Hydra.new('Bruce')
    expect(hydra.heads).to eq(5)
  end

  it 'can have more or less heads' do
    hydra = Hydra.new('Bruce', 8)
    expect(hydra.heads).to eq(8)
  end

  it 'has a hero with whom to do battle' do
    hero = Hero.new('Hercules')
    expect(hero.name).to eq('Hercules')
  end

  it 'hero has a bronze sword by default' do
    hero = Hero.new('Hercules')
    expect(hero.sword).to eq('bronze')
  end

  it 'hero chops a head off, two heads grow back' do
    hydra = Hydra.new('Lernaean')
    hero = Hero.new('Hercules')

    hero.chop(hydra)
    expect(hydra.heads).to eq(6)
  end

  it 'head does not grow back if the neck is cauterized' do
    hydra = Hydra.new('Lernaean', 13)
    hero = Hero.new('Hercules')

    hero.chop(hydra)
    hero.cauterize(hydra)

    expect(hydra.heads).to eq(12)

    hero.chop(hydra)
    hero.chop(hydra)

    expect(hydra.heads).to eq(14)
  end

  it 'can only cauterize a neck that has just been chopped' do
    hydra = Hydra.new('Lernaean', 13)
    hero = Hero.new('Hercules')

    hero.cauterize(hydra)

    expect(hydra.heads).to eq(13)

    hero.chop(hydra)
    hero.chop(hydra)
    hero.chop(hydra)
    hero.cauterize(hydra)

    expect(hydra.heads).to eq(14)

    hero.chop(hydra)
    hero.cauterize(hydra)
    hero.cauterize(hydra)
    hero.cauterize(hydra)

    expect(hydra.heads).to eq(13)
  end

  it 'cannot chop off the last head with a bronze sword' do
    hydra = Hydra.new('Lernaean')
    hero = Hero.new('Hercules')

    5.times do
      hero.chop(hydra)
      hero.cauterize(hydra)
    end

    expect(hydra.heads).to eq(1)
  end

  it 'hero can get a golden sword from a goddess' do
    hero = Hero.new('Hercules')
    goddess = Goddess.new('Athena')

    goddess.give_sword_to(hero)

    expect(hero.sword).to eq('golden')
  end

  it 'heads do not grow back if chopped by a golden sword' do
    hydra = Hydra.new('Lernaean')
    hero = Hero.new('Hercules')
    goddess = Goddess.new('Athena')

    goddess.give_sword_to(hero)
    hero.chop(hydra)
    
    expect(hydra.heads).to eq(4)
  end

  it 'golden sword can chop off the last head' do
    hydra = Hydra.new('Lernaean')
    hero = Hero.new('Hercules')
    goddess = Goddess.new('Athena')

    goddess.give_sword_to(hero)
    5.times { hero.chop(hydra) }

    expect(hydra.heads).to eq(0)
  end

end
