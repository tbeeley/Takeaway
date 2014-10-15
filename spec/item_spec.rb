require 'item'

describe Item do

	context 'on creation' do

		let(:item) {Item.new(:dish)}
		let(:dish) { Dish.new('margherita', 10) }

		it 'should have a dish' do
			expect(item.dish).to eq :dish
		end
	end

end
