class AddNameToBusinessOwners < ActiveRecord::Migration[7.0]
  def change
    add_column :business_owners, :name, :string
  end
end
