# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_suggested_store, :class => 'Admin::SuggestedStore' do
    name "MyString"
    email "MyString"
  end
end
