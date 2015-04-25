require 'rails_helper'

RSpec.describe Turtle, type: :model do

	it "is inside its shell" do
  	turtle = Turtle.new(inside: true)
  	expect(turtle.inside).to eq true
	end

	it "is hiding" do
  	turtle = Turtle.new(inside: false)
  	turtle.hide
  	expect(turtle.inside).to eq true
	end

	it "has emerged" do
  	turtle = Turtle.new(inside: true)
  	turtle.emerge
  	expect(turtle.inside).to eq false
	end

end
