# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_store, :class => 'Admin::Store' do
    logo "MyString"
    myepos_enabled false
    offer_delivery false
    online_ordering false
    description "MyText"
    min_order 1
    prep_time 1
    enabled false
    user_can_discount false
    delivery_radius 1.5
    telephone "MyString"
  end
end
