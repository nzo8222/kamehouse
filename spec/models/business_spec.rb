require 'rails_helper'

RSpec.describe Business, type: :model do
  describe 'validations' do
    it 'is valid with a name and a business owner' do
      business_owner = BusinessOwner.create(name: 'John Doe')
      business = Business.new(name: 'My Business', business_owner: business_owner)
      expect(business).to be_valid
    end

    it 'is not valid without a name' do
      business = Business.new(name: nil)
      expect(business).to_not be_valid
    end

    it 'is not valid without a business owner' do
      business = Business.new(name: 'My Business', business_owner: nil)
      expect(business).to_not be_valid
    end
  end

  describe 'associations' do
    it 'belongs to a business owner' do
      association = Business.reflect_on_association(:business_owner)
      expect(association.macro).to eq :belongs_to
    end
  end
end