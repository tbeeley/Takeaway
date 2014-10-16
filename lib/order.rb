class Order

	def initialize
		@items = []
	end

	attr_accessor :items

	def add_item(item)
		@items << item
	end

	def total_cost
		items.inject(0) { |sum, item| sum + item.cost }
	end

	def time_of
		TIme.now
	end

end
