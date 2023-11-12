class Business < ApplicationRecord
  belongs_to :business_owner
  has_many :offerings
end
