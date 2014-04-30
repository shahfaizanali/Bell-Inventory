# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_suggested_take_away, :class => 'Admin::SuggestedTakeAway' do
    user nil
    suggestion "MyText"
  end
end
