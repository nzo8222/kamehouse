class CreateOfferings < ActiveRecord::Migration[7.0]
  def change
    create_table :offerings do |t|
      t.string :name
      t.string :offer_type
      t.decimal :price
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
