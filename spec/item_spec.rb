require 'item'

describe Item do

	context 'on creation' do

		let(:item) {Item.new(:dish, 2)}
		let(:dish) { Dish.new('margherita', 10) }

		it 'should have a dish' do
			expect(item.dish).to eq :dish
		end

		it 'should have a quantity' do
			expect(item.quantity).to eq 2
		end

	end

end
