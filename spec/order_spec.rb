require 'order'

describe Order do

	context 'upon creation' do

		it 'no items' do
			order = Order.new
			expect(order.items).to eq []
		end

	end

	# context 'when ordering' do

	# 	it 'should be able to add items' do

	# 	end
	# end

end
