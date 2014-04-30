require "spec_helper"

describe Admin::RecieptsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/reciepts").should route_to("admin/reciepts#index")
    end

    it "routes to #new" do
      get("/admin/reciepts/new").should route_to("admin/reciepts#new")
    end

    it "routes to #show" do
      get("/admin/reciepts/1").should route_to("admin/reciepts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/reciepts/1/edit").should route_to("admin/reciepts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/reciepts").should route_to("admin/reciepts#create")
    end

    it "routes to #update" do
      put("/admin/reciepts/1").should route_to("admin/reciepts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/reciepts/1").should route_to("admin/reciepts#destroy", :id => "1")
    end

  end
end
