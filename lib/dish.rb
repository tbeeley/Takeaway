class Dish

	def initialize(name, price)
		@name = name
		@price = price
	end

	attr_accessor :name, :price

	def description
		"#{name.capitalize}, £#{price}.00"
	end

end
