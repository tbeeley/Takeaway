class Order

	def initialize
		@items = []
	end

	attr_accessor :items

	def add_item(item)
		@items << item
	end

	# def total_cost
	# 	price_array = items.each {|item| sum += item.cost  }
	# end

end
