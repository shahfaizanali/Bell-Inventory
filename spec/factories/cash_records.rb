# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cash_record do
    usershift nil
    cashtype nil
    amount 1
  end
end
