# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :imei do
    imei_num "MyString"
    phone nil
  end
end
