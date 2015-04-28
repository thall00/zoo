require 'rails_helper'

RSpec.describe Turtle, type: :model do

  it "should include the :inside attribute" do
    expect(subject.attributes).to include("inside")
  end

	it "is inside its shell" do
  	turtle = Turtle.new(inside: true)
  	expect(turtle.inside).to eq true
	end

	it "can hide" do
  	turtle = Turtle.new(inside: false)
  	turtle.hide
  	expect(turtle.inside).to eq true
	end

	it "can emerge" do
  	turtle = Turtle.new(inside: true)
  	turtle.emerge
  	expect(turtle.inside).to eq false
	end

end
