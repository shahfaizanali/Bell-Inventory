# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :discount do
    percent 1.5
    amount 1.5
    order_type "MyString"
  end
end
