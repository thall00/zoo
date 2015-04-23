class Tiger < ActiveRecord::Base

	def self.hungry?
		self.appetite > 0
	end

	def self.eat zebra
		self.appetite -= zebra.weight
		zebra.destroy
	end
end
