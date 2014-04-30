# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_cms_page, :class => 'Admin::CmsPage' do
    name "MyString"
    title "MyString"
    url_key "MyString"
    content "MyText"
    meta_keywords "MyText"
    meta_description "MyText"
  end
end
