class Item

	def initialize(dish, quantity)
		@dish = dish
		@quantity = quantity
	end

	def cost
		dish.price * quantity
	end

	attr_accessor :dish, :quantity

end
