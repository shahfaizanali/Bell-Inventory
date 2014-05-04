class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
      t.string :description
      t.float :price
      t.integer :quantity
      t.text :remarks

      t.timestamps
    end
  end
end
