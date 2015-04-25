class Turtle < ActiveRecord::Base
	validates_presence_of :inside

	def hide
		self.inside = true
	end

	def emerge
		self.inside = false
	end
	
end
