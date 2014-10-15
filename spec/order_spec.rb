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
		let(:item1)	{ Item.new(:dish1, 2) }
		let(:item2) { Item.new(:dish2, 1) }
		let(:dish1) { Dish.new('Margherita', 10)}
		let(:dish2) { Dish.new('Funghi', 15)}


		it 'should be able to add items' do
			expect(order.items.count).to eq 0
			order.add_item(item1)
			expect(order.items.count).to eq 1
		end

		it 'should know order cost' do
			order.add_item(Item.new(dish1, 1))
			order.add_item(Item.new(dish2, 2))
			expect(order.total_cost).to eq 40
		end
	end

end
