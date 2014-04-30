require "spec_helper"

describe UserShiftsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_shifts").should route_to("user_shifts#index")
    end

    it "routes to #new" do
      get("/user_shifts/new").should route_to("user_shifts#new")
    end

    it "routes to #show" do
      get("/user_shifts/1").should route_to("user_shifts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_shifts/1/edit").should route_to("user_shifts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_shifts").should route_to("user_shifts#create")
    end

    it "routes to #update" do
      put("/user_shifts/1").should route_to("user_shifts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_shifts/1").should route_to("user_shifts#destroy", :id => "1")
    end

  end
end
