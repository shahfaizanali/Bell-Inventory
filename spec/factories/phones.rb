# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :phone do
    company "MyString"
    model "MyString"
    quantity 1
    memory "MyString"
    color "MyString"
    remarks "MyText"
    purchase_price 1.5
  end
end
