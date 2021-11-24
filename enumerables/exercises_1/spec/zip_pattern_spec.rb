RSpec.describe 'zip pattern' do

  it 'speed interview pairs' do
    list1 = ["Alice", "Bob", "Charlie"]
    list2 = ["Xenia", "Yves", "Zach"]
    pairs = []
    list1.length.times do |i|
      pairs << [list1[i], list2[i]]
    end
    expect(pairs).to eq([["Alice", "Xenia"], ["Bob", "Yves"], ["Charlie", "Zach"]])
  end

  it 'menu' do
    list1 = ["NY Strip Steak", "Lamb Stew", "Grilled Salmon"]
    list2 = [29, 23, 26]
    prices = []
    list1.length.times do |i|
      prices << [list1[i], list2[i]]
    end
    expect(prices).to eq([["NY Strip Steak", 29], ["Lamb Stew", 23], ["Grilled Salmon", 26]])
  end

  it 'lottery tickets' do
    list1 = ["Alice", "Bob", "Charlie"]
    list2 = [298, 166, 237]
    tickets = []

    list2.length.times do |i|
      tickets << [list1[i], list2[i]]
    end
    expect(tickets).to eq([["Alice", 298], ["Bob", 166], ["Charlie", 237]])
  end

  it 'equivalent dna sequences' do
    strand1 = ["G", "A", "T", "T", "A", "C", "A"]
    strand2 = ["G", "A", "T", "G", "A", "C", "A"]
    pairs = []
    strand2.length.times do |j|
      pairs << [strand1[j], strand2[j]]
    end
    expect(pairs).to eq([["G", "G"], ["A", "A"], ["T", "T"], ["T", "G"], ["A", "A"], ["C", "C"], ["A", "A"]])
  end

  it 'solitaire' do
    list1 = ["Ace", "6", "10", "Queen"]
    list2 = [:clubs, :diamonds, :hearts, :spades]
    cards = []
    list1.length.times do |k|
      cards << [list1[k], list2[k]]
    end
    expect(cards).to eq([["Ace", :clubs], ["6", :diamonds], ["10", :hearts], ["Queen", :spades]])
  end

  it 'colors' do
    list1 = ["shoes", "tie", "umbrella"]
    list2 = ["red", "pink", "black"]
    fashion = []
    list1.length.times do |l|
      fashion << [list1[l], list2[l]]
    end
    expect(fashion).to eq([["shoes", "red"], ["tie", "pink"], ["umbrella", "black"]])
  end

end
