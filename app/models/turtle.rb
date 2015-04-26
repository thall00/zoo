class Turtle < ActiveRecord::Base
	validates_presence_of :inside, message: "Inside cannot be blank."
	validates :inside, :inclusion => {:in => [true, false]}

	def hide
		self.inside = true
	end

	def emerge
		self.inside = false
	end
	
end
