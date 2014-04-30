# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    customer nil
    store nil
    user_references "MyString"
    paymentmethod nil
    ordertype nil
    subtotal 1.5
    distance 1.5
    is_weborder false
  end
end
