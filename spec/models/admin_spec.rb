require 'rails_helper'

RSpec.describe Admin, type: :model do
  describe 'associations' do
    it 'has many users' do
      association = Admin.reflect_on_association(:users)
      expect(association.macro).to eq :has_many
    end
  end
end
