# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_shift do
    user nil
    start_time "2014-03-25 22:23:39"
    end_time "2014-03-25 22:23:39"
    opening_balance 1.5
    closing_balance 1.5
  end
end
