require "spec_helper"

describe Admin::ProductOptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/product_options").should route_to("admin/product_options#index")
    end

    it "routes to #new" do
      get("/admin/product_options/new").should route_to("admin/product_options#new")
    end

    it "routes to #show" do
      get("/admin/product_options/1").should route_to("admin/product_options#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/product_options/1/edit").should route_to("admin/product_options#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/product_options").should route_to("admin/product_options#create")
    end

    it "routes to #update" do
      put("/admin/product_options/1").should route_to("admin/product_options#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/product_options/1").should route_to("admin/product_options#destroy", :id => "1")
    end

  end
end
