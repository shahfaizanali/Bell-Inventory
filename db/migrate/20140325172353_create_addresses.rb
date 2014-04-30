class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.float :lat
      t.float :lng
      t.integer :post_code
      t.string :city
      t.references :country, index: true
      t.references :resource, :polymorphic => true

      t.timestamps
    end
  end
end
