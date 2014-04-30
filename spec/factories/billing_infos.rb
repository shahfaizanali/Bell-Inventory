# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :billing_info do
    store nil
    bank_name "MyString"
    sort_code 1
    account_no "MyString"
    account_name "MyString"
  end
end
