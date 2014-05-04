class Invoice < ActiveRecord::Base
  belongs_to :user
  has_many :invoice_items
  accepts_nested_attributes_for :invoice_items

  def tax_due
    subtotal* tax_rate / 100
  end
  
  def subtotal
    invoice_items.map { |item| item.price }.sum
  end
  def total
   return (subtotal+tax_due+other) 
  end
end
