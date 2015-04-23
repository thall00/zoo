class Turtle < ActiveRecord::Base
	def hide
		self.inside = true
	end

	def emerge
		self.inside = false
	end
	
end
