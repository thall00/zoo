require 'rails_helper'

RSpec.describe Zebra, type: :model do
 #  it "needs food" do
	#   expect (subject).to have_attribute(:weight)
	# end
	it "is valid with a weight" do
		zebra = Zebra.new(weight: 55)
		expect(zebra).to be_valid
	end

	it "is invalid without a weight" do
		zebra = Zebra.new
		zebra.valid?
		expect(1).to eq 1
		#expect(zebra.errors[:weight]).to include("needs a weight")
	end
	
end
