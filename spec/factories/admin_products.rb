# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_product, :class => 'Admin::Product' do
    name "MyString"
    description "MyText"
    is_enable false
    hide_online false
    discount_applicable false
    featured false
    tax ""
    store nil
    category nil
  end
end
