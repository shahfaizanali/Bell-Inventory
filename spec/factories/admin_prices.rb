# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_price, :class => 'Admin::Price' do
    product nil
    eat_in 1.5
    takeaway 1.5
  end
end
