require "spec_helper"

describe Admin::CmsPagesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/cms_pages").should route_to("admin/cms_pages#index")
    end

    it "routes to #new" do
      get("/admin/cms_pages/new").should route_to("admin/cms_pages#new")
    end

    it "routes to #show" do
      get("/admin/cms_pages/1").should route_to("admin/cms_pages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/cms_pages/1/edit").should route_to("admin/cms_pages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/cms_pages").should route_to("admin/cms_pages#create")
    end

    it "routes to #update" do
      put("/admin/cms_pages/1").should route_to("admin/cms_pages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/cms_pages/1").should route_to("admin/cms_pages#destroy", :id => "1")
    end

  end
end
