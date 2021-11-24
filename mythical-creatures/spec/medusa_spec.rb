require 'rspec'
require './lib/medusa'

RSpec.describe Medusa do
  it 'has a name' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.name).to eq('Cassiopeia')
  end

  it 'has no statues when created' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.statues).to be_empty
  end

  it 'gains a statue when staring at a person' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    medusa.stare(victim)
    expect(medusa.statues.count).to eq(1)
    expect(medusa.statues.first.name).to eq('Perseus')
    expect(medusa.statues.first).to be_an_instance_of(Person)
  end

  it 'turns a person to stone when staring at them' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    #assert(victim.stoned?).to be false
    expect(victim.stoned?).to be false
    medusa.stare(victim)
    #assert(victim.stoned?).to be true
    expect(victim.stoned?).to be true
  end

  it 'can only have three victims' do
    medusa = Medusa.new('Cassiopeia')
    victim1 = Person.new('Dionysus')
    victim2 = Person.new('Persephone')
    victim3 = Person.new('Hera')
    victim4 = Person.new('Hercules')

    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    medusa.stare(victim4)

    #expect(victim4.stoned?).to be false
    # expect(medusa.statues).to eq(['Dionysus', 'Persephone', 'Hera'])
  end

  it 'if a fourth victim is stoned the first is unstoned' do
    medusa = Medusa.new('Cassiopeia')
    victim1 = Person.new('Dionysus')
    victim2 = Person.new('Persephone')
    victim3 = Person.new('Hera')
    victim4 = Person.new('Hercules')

    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    medusa.stare(victim4)

    expect(victim1.stoned?).to be false
    expect(medusa.statues).to eq([victim2, victim3, victim4])
  end
end
