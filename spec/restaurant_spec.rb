require 'restaurant'

describe Restaurant do

	let(:restaurant) { Restaurant.new("Portobello", "italian")}
	let(:dish) 		 { double :dish, name: "margherita", price: 10 }
	let(:dish1) 	 { double :dish, name: "funghi", price: 15 }
	let(:order) 	 { double :order 		}
	let(:user)		 { double :user  		}

	context 'when created' do

		it 'should have a name' do
			expect(restaurant.name).to eq 'Portobello'
		end

		it 'should have a cuisine' do
			expect(restaurant.cuisine).to eq 'italian'
		end

		it 'should have a menu' do
			expect(restaurant.menu).to eq []
		end

		it 'should have a list of orders' do
			expect(restaurant.orders).to eq []
		end

	end

	context 'Whilst running' do

		let(:thomas){ double :user, name: 'Thomas'}
		let(:order) { double :order, total_cost: 20, time_of: Time.now}
		let(:dish2) { Dish.new("margherita", 10) }


		it 'should be able to add dishes to its menu' do
			expect(restaurant.menu).to eq []
			restaurant.add_to_menu(dish)
			expect(restaurant.menu).to eq [dish]
		end

		it 'should be able to list its menu' do
			restaurant.add_to_menu(dish2)
			expect(restaurant.list_menu).to eq ["Margherita, £10.00"]
		end

		it 'should be able to take order from client' do
			expect(restaurant.take_order_from(thomas, order)).to eq "Hi Thomas, thanks for your order. It came to £20.00. It will be delivered by #{Time.now.hour + 1}:#{Time.now.min}"
		end


	end

end
