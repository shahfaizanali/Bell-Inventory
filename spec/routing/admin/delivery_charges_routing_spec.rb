require "spec_helper"

describe Admin::DeliveryChargesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/delivery_charges").should route_to("admin/delivery_charges#index")
    end

    it "routes to #new" do
      get("/admin/delivery_charges/new").should route_to("admin/delivery_charges#new")
    end

    it "routes to #show" do
      get("/admin/delivery_charges/1").should route_to("admin/delivery_charges#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/delivery_charges/1/edit").should route_to("admin/delivery_charges#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/delivery_charges").should route_to("admin/delivery_charges#create")
    end

    it "routes to #update" do
      put("/admin/delivery_charges/1").should route_to("admin/delivery_charges#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/delivery_charges/1").should route_to("admin/delivery_charges#destroy", :id => "1")
    end

  end
end
