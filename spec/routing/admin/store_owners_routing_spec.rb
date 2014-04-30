require "spec_helper"

describe Admin::StoreOwnersController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/store_owners").should route_to("admin/store_owners#index")
    end

    it "routes to #new" do
      get("/admin/store_owners/new").should route_to("admin/store_owners#new")
    end

    it "routes to #show" do
      get("/admin/store_owners/1").should route_to("admin/store_owners#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/store_owners/1/edit").should route_to("admin/store_owners#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/store_owners").should route_to("admin/store_owners#create")
    end

    it "routes to #update" do
      put("/admin/store_owners/1").should route_to("admin/store_owners#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/store_owners/1").should route_to("admin/store_owners#destroy", :id => "1")
    end

  end
end
