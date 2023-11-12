class CreateBusinessOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :business_owners do |t|
      t.timestamps
    end
  end
end
