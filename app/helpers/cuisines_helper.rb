module CuisinesHelper
	def cuisine_categories
		I18n.t(:cuisines).map { |key, value| [ value, key ] }
	end
end
