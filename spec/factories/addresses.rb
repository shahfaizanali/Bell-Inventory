# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    line1 "MyString"
    line2 "MyString"
    lat 1.5
    lng 1.5
    country nil
    resource nil
  end
end
