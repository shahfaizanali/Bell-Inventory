# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_delivery do
    order nil
    driver nil
    status nil
  end
end
