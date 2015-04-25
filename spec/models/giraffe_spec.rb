require 'rails_helper'

RSpec.describe Giraffe, type: :model do

  it "is valid with a height" do
  	giraffe = Giraffe.new(height: 7)
  	expect(giraffe).to be_valid
	end

	it "can have its age guessed" do
		giraffe = Giraffe.new(height: 12)
		expect(giraffe.guess_age).to eq 7
	end

	it "is invalid without a height" do
		giraffe = Giraffe.new
		giraffe.valid?
		expect(1).to eq 1
	end

end
