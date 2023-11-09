class AddPolymorphicAssociationToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :class, polymorphic: true, index: true, default: 0
  end
end
