require 'rails_helper'

RSpec.describe BusinessOwner, type: :model do
  describe 'validations' do
    it 'is valid with a name' do
      business_owner = BusinessOwner.new(name: 'John Doe')
      expect(business_owner).to be_valid
    end

    it 'is not valid without a name' do
      business_owner = BusinessOwner.new(name: nil)
      expect(business_owner).to_not be_valid
    end
  end

  describe 'associations' do
    it 'has many users' do
      association = BusinessOwner.reflect_on_association(:users)
      expect(association.macro).to eq :has_many
    end
  end
end