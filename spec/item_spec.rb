require 'item'

describe Item do

	context 'on creation' do

		let(:item)	{ Item.new(dish, 2)}
		let(:dish)  { double :dish, price: 10 }

		it 'should have a dish' do
			expect(item.dish).to eq dish
		end

		it 'should have a quantity' do
			expect(item.quantity).to eq 2
		end

		it 'should know its cost' do
			expect(item.cost).to eq 20
		end

	end

end
