# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :driver do
    store nil
    name "MyString"
    available false
  end
end
