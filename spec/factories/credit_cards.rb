# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :credit_card do
    holder_name "MyString"
    expiry "2014-03-25"
    number "MyString"
    type ""
    customer nil
  end
end
