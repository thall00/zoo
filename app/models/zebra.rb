class Zebra < ActiveRecord::Base
  validates_presence_of :weight, message: "Zebra needs a weight."
  validates_numericality_of :weight, message: "Weight must be an integer."
end
