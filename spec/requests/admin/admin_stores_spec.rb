require 'spec_helper'

describe "Admin::Stores" do
  describe "GET /admin_stores" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get admin_stores_path
      response.status.should be(200)
    end
  end
end
