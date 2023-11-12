class CreateBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.references :business_owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
