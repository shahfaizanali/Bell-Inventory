require "spec_helper"

describe Admin::ProductAttributesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/product_attributes").should route_to("admin/product_attributes#index")
    end

    it "routes to #new" do
      get("/admin/product_attributes/new").should route_to("admin/product_attributes#new")
    end

    it "routes to #show" do
      get("/admin/product_attributes/1").should route_to("admin/product_attributes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/product_attributes/1/edit").should route_to("admin/product_attributes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/product_attributes").should route_to("admin/product_attributes#create")
    end

    it "routes to #update" do
      put("/admin/product_attributes/1").should route_to("admin/product_attributes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/product_attributes/1").should route_to("admin/product_attributes#destroy", :id => "1")
    end

  end
end
