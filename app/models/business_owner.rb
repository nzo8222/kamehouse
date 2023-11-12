class BusinessOwner < ApplicationRecord
    has_many :users, as: :roleable
    validates :name, presence: true
    has_many :businesses
end
