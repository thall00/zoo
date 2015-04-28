require 'rails_helper'

RSpec.describe Zebra, type: :model do
 	it "should include the :weight attribute" do
 	  expect(subject.attributes).to include("weight")
 	end
	it "is valid with a weight" do
		zebra = Zebra.new(weight: 55)
		expect(zebra).to be_valid
	end
	it "is invalid without a weight" do
		zebra = Zebra.new
		expect(zebra).not_to be_valid
	end

	# it "is invalid without a weight" do
	# 	zebra = Zebra.new
	# 	zebra.valid?
	# 	expect(zebra.errors[:weight]).to include("Needs a weight")
	# end
	
end
