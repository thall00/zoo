class Zebra < ActiveRecord::Base
	validates_presence_of :weight, message: "Weight cannot be blank."
	validates_numericality_of :weight, message: "Weight must be an integer."
end
