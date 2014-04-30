require "spec_helper"

describe Admin::SuggestedTakeAwaysController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/suggested_take_aways").should route_to("admin/suggested_take_aways#index")
    end

    it "routes to #new" do
      get("/admin/suggested_take_aways/new").should route_to("admin/suggested_take_aways#new")
    end

    it "routes to #show" do
      get("/admin/suggested_take_aways/1").should route_to("admin/suggested_take_aways#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/suggested_take_aways/1/edit").should route_to("admin/suggested_take_aways#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/suggested_take_aways").should route_to("admin/suggested_take_aways#create")
    end

    it "routes to #update" do
      put("/admin/suggested_take_aways/1").should route_to("admin/suggested_take_aways#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/suggested_take_aways/1").should route_to("admin/suggested_take_aways#destroy", :id => "1")
    end

  end
end
