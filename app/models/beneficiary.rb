class Beneficiary < ApplicationRecord
    has_many :users, as: :roleable
end
