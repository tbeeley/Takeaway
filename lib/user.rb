class User

	def initialize(name, number)
		@name = name
		@number = number
		@orders = []
		check_number(number)
	end

	attr_accessor :name, :number, :orders

	def check_number(number)
		if number[0].to_i != 0
			raise 'That number is not real'
		elsif number.length > 11
			raise 'That number is too long'
		elsif number.length < 11
			raise 'That number is too short'
		end
	end

	def make_order(order)
		orders << order
	end

end
