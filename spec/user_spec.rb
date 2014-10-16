require 'user'

describe User do

	let(:user) { User.new("Thomas", "07841289922") }
	let(:bad_user) { User.new("Thomas", "07841289922345")}
	let(:order) { Order.new}

	context 'upon creation' do


		it 'should have a name' do
			expect(user.name).to eq "Thomas"
		end

		it 'should have legitimate digit contact number' do
			expect(user.number).to eq "07841289922"
		end

		it 'should not accept an illegitimate contact number' do
			expect{ lambda(bad_user)}.to raise_error('That number is too long')
		end

		it 'should have no orders' do
			expect(user.orders).to eq []
		end

	end

	context 'of an evening' do

		it 'should be able to make an order from a restaurant' do
			user.make_order(order)
			expect(user.orders).to eq [order]
		end

	end

end
