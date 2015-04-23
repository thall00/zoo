class Tiger < ActiveRecord::Base

	def hungry?
		self.appetite > 0
	end

	def eat zebra
		self.appetite -= zebra.weight
		zebra.destroy
	end
end
