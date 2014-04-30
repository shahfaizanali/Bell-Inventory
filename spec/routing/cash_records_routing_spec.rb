require "spec_helper"

describe CashRecordsController do
  describe "routing" do

    it "routes to #index" do
      get("/cash_records").should route_to("cash_records#index")
    end

    it "routes to #new" do
      get("/cash_records/new").should route_to("cash_records#new")
    end

    it "routes to #show" do
      get("/cash_records/1").should route_to("cash_records#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cash_records/1/edit").should route_to("cash_records#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cash_records").should route_to("cash_records#create")
    end

    it "routes to #update" do
      put("/cash_records/1").should route_to("cash_records#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cash_records/1").should route_to("cash_records#destroy", :id => "1")
    end

  end
end
