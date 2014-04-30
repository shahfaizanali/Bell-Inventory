# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_product do
    order nil
    product_attribute nil
    quantity 1
  end
end
