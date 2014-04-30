# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_category, :class => 'Admin::Category' do
    name "MyString"
    position 1
    description "MyText"
    is_enable false
  end
end
