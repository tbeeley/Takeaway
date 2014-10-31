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

	def message
		"Thanks for your order. It came to £#{total_cost}.00. It will be delivered by #{time_of.min} past the hour"
	end

	def time_of
		Time.now
	end

end
