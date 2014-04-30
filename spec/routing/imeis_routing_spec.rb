require "spec_helper"

describe ImeisController do
  describe "routing" do

    it "routes to #index" do
      get("/imeis").should route_to("imeis#index")
    end

    it "routes to #new" do
      get("/imeis/new").should route_to("imeis#new")
    end

    it "routes to #show" do
      get("/imeis/1").should route_to("imeis#show", :id => "1")
    end

    it "routes to #edit" do
      get("/imeis/1/edit").should route_to("imeis#edit", :id => "1")
    end

    it "routes to #create" do
      post("/imeis").should route_to("imeis#create")
    end

    it "routes to #update" do
      put("/imeis/1").should route_to("imeis#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/imeis/1").should route_to("imeis#destroy", :id => "1")
    end

  end
end
