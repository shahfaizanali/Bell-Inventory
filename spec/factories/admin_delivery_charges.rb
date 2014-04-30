# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_delivery_charge, :class => 'Admin::DeliveryCharge' do
    store nil
    distance 1
    charges 1.5
  end
end
