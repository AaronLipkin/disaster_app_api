class Survivor < ApplicationRecord
	belongs_to :city

	def distance
		@distance
	end

	def distance= dist
		@distance = dist
	end
end
