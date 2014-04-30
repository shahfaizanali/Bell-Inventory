# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :price do
    eat_in 1.5
    takeaway 1.5
    delivery 1.5
    product_attribute nil
    product_option_value nil
  end
end
