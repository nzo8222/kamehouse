class Admin < ApplicationRecord
    has_many :users, as: :roleable
end
