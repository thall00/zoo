class ZebraController < ApplicationController
	def index
		# @zebra_count = Zebra.count
		# puts @zebra_count
		@my_params = params
		@qs_pairs = params.select do |key, value|
			!(["action", "controller"].include? (key))
		end
	end
end
