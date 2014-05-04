class CreateInvoiceItems < ActiveRecord::Migration
  def change
    create_table :invoice_items do |t|
      t.string :description
      t.float :price
      t.references :invoice, index: true

      t.timestamps
    end
  end
end
