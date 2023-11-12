require 'rails_helper'

RSpec.describe Offering, type: :model do
  describe 'validations' do
    it 'is valid with a name, offer_type, price, and a business' do
      business = Business.create(name: 'My Business', business_owner: BusinessOwner.create(name: 'John Doe'))
      offering = Offering.new(name: 'My Offering', offer_type: 'Discount', price: 10.0, business: business)
      expect(offering).to be_valid
    end

    it 'is not valid without a name' do
      offering = Offering.new(name: nil)
      expect(offering).to_not be_valid
    end

    it 'is not valid without an offer_type' do
      offering = Offering.new(offer_type: nil)
      expect(offering).to_not be_valid
    end

    it 'is not valid without a price' do
      offering = Offering.new(price: nil)
      expect(offering).to_not be_valid
    end

    it 'is not valid without a business' do
      offering = Offering.new(name: 'My Offering', offer_type: 'Discount', price: 10.0, business: nil)
      expect(offering).to_not be_valid
    end
  end

  describe 'associations' do
    it 'belongs to a business' do
      association = Offering.reflect_on_association(:business)
      expect(association.macro).to eq :belongs_to
    end
  end
end