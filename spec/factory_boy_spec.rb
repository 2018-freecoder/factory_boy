require 'rspec'
require './src/factory_boy'
require './src/user'
require './src/admin'

RSpec.configure do |config|
	config.before :each do
		FactoryBoy.clean_sequence
	end
end

describe FactoryBoy do

	FactoryBoy.define do
		sequence(:cellphone, 100) { |n| n }

		factory :user do
			name 'jack'
			gender 'male'
			cellphone { generate(:cellphone) }
		end

		factory :admin do
			user
		end
	end

	context 'user' do
    # task 1
    it	'should create User model' do
			user = FactoryBoy.create(:user)
			expect(user.name).to eq('jack')
			expect(user.gender).to eq('male')
    end

    # task 2
    it	'should replace default value' do
			expect(FactoryBoy.create(:user, name: 'jim').name).to eq('jim')
		end

    # task 3
		it	'should generate different cellphone' do
			expect(FactoryBoy.create(:user).cellphone).to eq(100)
			expect(FactoryBoy.create(:user).cellphone).to eq(101)
		end
	end

	context 'admin' do
    # task 4
		it 'should create' do
			expect(FactoryBoy.create(:admin).user.name).to eq('jack')
		end
	end
end