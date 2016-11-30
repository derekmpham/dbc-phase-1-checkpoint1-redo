require_relative '../hello_siri'
require 'rspec'


###################
##   Release: 1  ##
###################

describe "#hello_siri" do

  context "when command and name arguments are not valid" do
    it "raises an error if untrustworthy humans attempt to access the system" do
      expect{hello_siri("fluffernuffer","Dave")}.to raise_error(SecurityError) # Note the {} for errors
    end
  end

  context "when command and name arguments are valid" do
    it "says input is invalid if the input is not a string" do
		expect{hello_siri(5, 3)}.to raise_error(ArgumentError) # Note the {} for errors
	end

	it "returns hello with name when input is 'Hello'" do
		expect(hello_siri("Hello", "Jim")).to eq("Hello Jim.") # Note the () for non-errors
	end

	it "shows random integer between 0 and 1000000 when input is 'I'm feeling lucky'" do
		expect(hello_siri("I'm feeling lucky", "Jim")).to be_between(0, 1000000).inclusive
	end

	it "says 'Google it!' when user asks how to be an amazing developer" do
		expect(hello_siri("How do I become an amazing developer?", "Jim")).to eq("Google it!")
	end

	it "says it doesn't understand  if any other input" do
		expect(hello_siri("lqkjw;lkajsd;lkfja;sldkjf", "a;slkdjf;lkjwe;lj")).to eq("I don't understand. Should I call your emergency contact number?")
	end

  end

end
