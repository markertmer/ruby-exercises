RSpec.describe 'sort_by pattern' do

  it 'sorts alphabetically' do
    words = ["broccoli", "Carrots", "FISH", "Bacon", "candy"]
    transformed = []
    words.each do |word|
      transformed << [word.downcase, word]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, word|
      sorted << word
    end
    expect(sorted).to eq(["Bacon", "broccoli", "candy", "Carrots", "FISH"])
  end

  it 'alphabetically by last letter' do
    things = ["pill", "box", "glass", "water", "sponge"]
    transformed = []
    things.each do |thing|
      transformed << [thing.reverse, thing]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, thing|
      sorted << thing
    end
    expect(sorted).to eq(["sponge", "pill", "water", "glass", "box"])
  end

  it 'sort by distance' do
    distances = ["1cm", "9cm", "30cm", "4cm", "2cm"]
    transformed = []
    distances.each do |length|
      transformed << [length.delete("cm").to_i, length]
    end
    transformed = transformed.sort
    sorted = []
    transformed.each do |sort_key, distance|
      sorted << distance
    end
    expect(sorted).to eq(["1cm", "2cm", "4cm", "9cm", "30cm"])
  end

  it 'by length' do
    words = ["heteromorph", "ancyloceratina", "bioengineering", "mathematical", "bug"]
    trans = []
    words.each do |wrd|
      trans << [wrd.count(wrd), wrd]
    end
    trans = trans.sort
    sorted = []
    trans.each do |length, word|
      sorted << word
    end
    expect(sorted).to eq(["bug", "heteromorph", "mathematical", "ancyloceratina", "bioengineering"])
  end

  it 'by proximity to ten' do
    prices = [3.02, 9.91, 17.9, 10.01, 11.0]
    trans = []
    prices.each do |num|
      trans << [(num - 10).abs , num]
    end
    trans = trans.sort
    sorted = []
    trans.each do |prox, num|
      sorted << num
    end
    expect(sorted).to eq([10.01, 9.91, 11.0, 3.02, 17.9])
  end

  it 'by number of cents' do
    prices = [3.02, 9.91, 7.9, 10.01, 11.0]
    trans = []
    prices.each do |num|
      trans << [num.modulo(1), num]
    end
    trans = trans.sort
    sorted = []
    trans.each do |key, num|
      sorted << num
    end
    expect(sorted).to eq([11.0, 10.01, 3.02, 7.9, 9.91])
  end
end
