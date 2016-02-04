class Purchase < ActiveRecord::Base
	def to_param
		UUID
	end
end