require_relative '../data_structures'
require 'rspec'

###################
##   Release: 0  ##
###################

describe "#search_in_array" do

  let(:numbered_array){[1,2,3,4,5,6,7,8,9,10]}
  let(:letters_array){["a","b","c","d"]}

  it "returns the index of the element" do
    expect(search_in_array(numbered_array, 1)).to eq(0)
    expect(search_in_array(numbered_array, 10)).to eq(9)
    expect(search_in_array(letters_array, "a")).to eq(0)
  end

  it "returns nil if the element is not found" do
    expect(search_in_array(numbered_array, 11)).to eq(nil)
    expect(search_in_array(numbered_array, "z")).to eq(nil)
  end

end

describe "#numbers_in_hash" do

  let(:input_hash){{betty: "904-294-1390",
                    tom:   "387-122-8976",
                    ally:  "549-890-1029",
                    jimmy: "432-897-8120"}}

  it "returns the correct number for a given key" do
    expect(numbers_in_hash(input_hash, :betty)).to eq "904-294-1390"
    expect(numbers_in_hash(input_hash, :tom)).to eq "387-122-8976"
  end

  it "returns nil when the given search is not found" do
    expect(numbers_in_hash(input_hash, :tim)).to eq nil
  end

end

###################
# Stretch Release #
###################

describe "#non_repeating_char" do
  xit "returns the first character which is not repeated in a string" do
    expect(non_repeating_char("yellow")).to eq "y"
    expect(non_repeating_char("tooth")).to eq "h"
    expect(non_repeating_char("wallawallabingbang")).to eq "i"
  end
end
