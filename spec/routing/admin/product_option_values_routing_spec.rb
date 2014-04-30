require "spec_helper"

describe Admin::ProductOptionValuesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/product_option_values").should route_to("admin/product_option_values#index")
    end

    it "routes to #new" do
      get("/admin/product_option_values/new").should route_to("admin/product_option_values#new")
    end

    it "routes to #show" do
      get("/admin/product_option_values/1").should route_to("admin/product_option_values#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/product_option_values/1/edit").should route_to("admin/product_option_values#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/product_option_values").should route_to("admin/product_option_values#create")
    end

    it "routes to #update" do
      put("/admin/product_option_values/1").should route_to("admin/product_option_values#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/product_option_values/1").should route_to("admin/product_option_values#destroy", :id => "1")
    end

  end
end
