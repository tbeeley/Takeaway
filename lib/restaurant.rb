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

	def take_order_from(user, order)
		"Hi #{user.name}, thanks for your order. It came to £#{order. total_cost}.00. It will be delivered by #{order.time_of.hour + 1}:#{order.time_of.min}"
		#Send text to user.
	end

end
