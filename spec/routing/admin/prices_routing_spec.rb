require "spec_helper"

describe Admin::PricesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/prices").should route_to("admin/prices#index")
    end

    it "routes to #new" do
      get("/admin/prices/new").should route_to("admin/prices#new")
    end

    it "routes to #show" do
      get("/admin/prices/1").should route_to("admin/prices#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/prices/1/edit").should route_to("admin/prices#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/prices").should route_to("admin/prices#create")
    end

    it "routes to #update" do
      put("/admin/prices/1").should route_to("admin/prices#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/prices/1").should route_to("admin/prices#destroy", :id => "1")
    end

  end
end
