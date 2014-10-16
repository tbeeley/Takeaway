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

		it 'should be able to adjust for a menu' do
			expect(dish.description).to eq "Margherita, £10.00"
		end
	end

end
