require "spec_helper"

describe Admin::CustomersController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/customers").should route_to("admin/customers#index")
    end

    it "routes to #new" do
      get("/admin/customers/new").should route_to("admin/customers#new")
    end

    it "routes to #show" do
      get("/admin/customers/1").should route_to("admin/customers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/customers/1/edit").should route_to("admin/customers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/customers").should route_to("admin/customers#create")
    end

    it "routes to #update" do
      put("/admin/customers/1").should route_to("admin/customers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/customers/1").should route_to("admin/customers#destroy", :id => "1")
    end

  end
end
