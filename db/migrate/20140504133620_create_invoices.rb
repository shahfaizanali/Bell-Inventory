class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :bill_to
      t.references :user, index: true
      t.float :tax_rate
      t.float :other
      t.string :payment_mode

      t.timestamps
    end
  end
end
