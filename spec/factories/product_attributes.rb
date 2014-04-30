# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product_attribute do
    name "MyString"
    position 1
    is_enable false
    product nil
  end
end
