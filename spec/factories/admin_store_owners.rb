# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_store_owner, :class => 'Admin::StoreOwner' do
    name "MyString"
    company_name "MyString"
    vat_num "MyString"
    email "MyString"
    mobile "MyString"
    landline "MyString"
  end
end
