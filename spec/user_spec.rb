require 'user'

describe User do

	context 'upon creation' do

		it 'should have a name' do
			User.new("Thomas")
			expect(user.name).to eq "Thomas"
		end

	end

end
