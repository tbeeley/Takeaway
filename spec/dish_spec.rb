require 'dish'

describe Dish do

	let(:dish) { Dish.new('margherita', 10)}

	context 'when created' do

		it 'should have a name' do
			expect(dish.name).to eq "margherita"
		end

		it 'should have a price' do
			expect(dish.price).to eq 10
		end
	end

end
