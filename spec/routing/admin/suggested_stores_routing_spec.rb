require "spec_helper"

describe Admin::SuggestedStoresController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/suggested_stores").should route_to("admin/suggested_stores#index")
    end

    it "routes to #new" do
      get("/admin/suggested_stores/new").should route_to("admin/suggested_stores#new")
    end

    it "routes to #show" do
      get("/admin/suggested_stores/1").should route_to("admin/suggested_stores#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/suggested_stores/1/edit").should route_to("admin/suggested_stores#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/suggested_stores").should route_to("admin/suggested_stores#create")
    end

    it "routes to #update" do
      put("/admin/suggested_stores/1").should route_to("admin/suggested_stores#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/suggested_stores/1").should route_to("admin/suggested_stores#destroy", :id => "1")
    end

  end
end
