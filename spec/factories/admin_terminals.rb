# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_terminal, :class => 'Admin::Terminal' do
    mac_address "MyString"
    store nil
  end
end
