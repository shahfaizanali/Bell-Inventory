# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_cuisine, :class => 'Admin::Cuisine' do
    name "MyString"
  end
end
