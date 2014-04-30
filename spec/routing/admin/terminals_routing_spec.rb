require "spec_helper"

describe Admin::TerminalsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/terminals").should route_to("admin/terminals#index")
    end

    it "routes to #new" do
      get("/admin/terminals/new").should route_to("admin/terminals#new")
    end

    it "routes to #show" do
      get("/admin/terminals/1").should route_to("admin/terminals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/terminals/1/edit").should route_to("admin/terminals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/terminals").should route_to("admin/terminals#create")
    end

    it "routes to #update" do
      put("/admin/terminals/1").should route_to("admin/terminals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/terminals/1").should route_to("admin/terminals#destroy", :id => "1")
    end

  end
end
