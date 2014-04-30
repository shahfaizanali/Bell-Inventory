# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product_option do
    name "MyString"
    position 1
    is_enable false
  end
end
