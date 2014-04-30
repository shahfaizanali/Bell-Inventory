class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :company
      t.string :model
      t.integer :quantity
      t.string :memory
      t.string :color
      t.text :remarks
      t.float :purchase_price

      t.timestamps
    end
  end
end
