# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_sms_template, :class => 'Admin::SmsTemplate' do
    content "MyText"
    store nil
  end
end
