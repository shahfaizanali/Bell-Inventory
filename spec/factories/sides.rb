# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :side do
    product_attribute_id 1
    product_option_id 1
    optional false
  end
end
