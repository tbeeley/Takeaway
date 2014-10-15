require 'order'

describe Order do

	context 'upon creation' do

		it 'no items' do
			order = Order.new
			expect(order.items).to eq []
		end

	end

	context 'when ordering' do

		let(:order) { Order.new }
		let(:item)	{ double :item }

		it 'should be able to add items' do
			expect(order.items.count).to eq 0
			order.add_item(item)
			expect(order.items.count).to eq 1
		end

		# it 'should know the current cost' do
		# 	expect(order.total_cost).to eq 20
		# end
	end

end
