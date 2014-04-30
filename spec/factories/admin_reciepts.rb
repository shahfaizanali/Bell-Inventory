# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_reciept, :class => 'Admin::Reciept' do
    store nil
    no_of_reciept 1
    message "MyText"
    webaddress "MyString"
    show_vat false
    show_tax false
    duplicate_kitchen false
  end
end
