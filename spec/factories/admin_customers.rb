# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_customer, :class => 'Admin::Customer' do
    first_name "MyString"
    last_name "MyString"
    mobile "MyString"
    other "MyString"
    user nil
    blocked false
    flag false
  end
end
