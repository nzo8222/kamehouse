require 'rails_helper'

RSpec.describe Beneficiary, type: :model do
  describe 'associations' do
    it 'has many users' do
      association = Beneficiary.reflect_on_association(:users)
      expect(association.macro).to eq :has_many
    end
  end
end
