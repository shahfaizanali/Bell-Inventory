require 'spec_helper'

describe "Admin::SuggestedTakeAways" do
  describe "GET /admin_suggested_take_aways" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get admin_suggested_take_aways_path
      response.status.should be(200)
    end
  end
end
