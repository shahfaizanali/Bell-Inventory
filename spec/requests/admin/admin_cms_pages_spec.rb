require 'spec_helper'

describe "Admin::CmsPages" do
  describe "GET /admin_cms_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get admin_cms_pages_path
      response.status.should be(200)
    end
  end
end
