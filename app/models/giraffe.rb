class Giraffe < ActiveRecord::Base
	# Giraffe calf is ~6 feet tall. Adult giraffes can be as tall ast 20 ft.
	# Giraffes reach max height at age 10, and live up to 25 years.
	def guess_age (giraffe)
		if giraffe.height < 5
			age = 0
		elsif giraffe.height >= 15
			age = rand(10..20)
		else
			age = giraffe.height - 5
		end	
	end
end
