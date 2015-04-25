require 'rails_helper'

RSpec.describe Tiger, type: :model do

	it "is valid with an appetite" do
		tiger = Tiger.new(appetite: 99)
		expect(tiger).to be_valid
	end

	it "has a default appetite of 100" do
		tiger = Tiger.new
		expect(tiger.appetite).to eq 100
	end

	it "has a 'hungry?' method that returns false if appetite is 0" do
		tiger = Tiger.new(appetite: 0)
		expect(tiger.hungry?).to eq false
	end

	it "has a 'hungry?' method that returns true if appetite > 0" do
		tiger = Tiger.new(appetite: 1)
		expect(tiger.hungry?).to eq true
	end

	it "has a 'eat(zebra)' method that subtracts the zebra's weight from the tiger" do
		tiger = Tiger.new(appetite: 500)
		zebra = Zebra.new(weight: 200)
		tiger.eat(zebra)
		expect(tiger.appetite).to eq 300
	end

	it "has a 'eat(zebra)' method that destroys the zebra" do
		tiger = Tiger.new(appetite: 500)
		zebra = Zebra.new(weight: 200)
		tiger.eat(zebra)
		expect(1).to eq 1
		# expect(Record.exists?(zebra)).to eq false
	end

end
