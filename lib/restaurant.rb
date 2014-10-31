class Restaurant

	def initialize(name, cuisine)
		@name = name
		@cuisine = cuisine
		@menu = []
		@orders = []
	end

	attr_accessor :name, :cuisine, :menu, :orders

	def add_to_menu(dish)
		@menu << dish
	end

	def list_menu
		menu.collect { |dish| dish.description }
	end

end
