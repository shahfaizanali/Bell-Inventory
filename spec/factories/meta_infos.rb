# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :meta_info do
    store nil
    title "MyString"
    keyword "MyString"
    description "MyText"
  end
end
