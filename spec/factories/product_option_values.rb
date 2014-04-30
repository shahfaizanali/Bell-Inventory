# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product_option_value do
    name "MyString"
    position 1
    is_enable false
    tax nil
    product_option nil
  end
end
