require "spec_helper"

describe Admin::CuisinesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/cuisines").should route_to("admin/cuisines#index")
    end

    it "routes to #new" do
      get("/admin/cuisines/new").should route_to("admin/cuisines#new")
    end

    it "routes to #show" do
      get("/admin/cuisines/1").should route_to("admin/cuisines#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/cuisines/1/edit").should route_to("admin/cuisines#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/cuisines").should route_to("admin/cuisines#create")
    end

    it "routes to #update" do
      put("/admin/cuisines/1").should route_to("admin/cuisines#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/cuisines/1").should route_to("admin/cuisines#destroy", :id => "1")
    end

  end
end
