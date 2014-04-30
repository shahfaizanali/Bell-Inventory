require "spec_helper"

describe OrderDeliveriesController do
  describe "routing" do

    it "routes to #index" do
      get("/order_deliveries").should route_to("order_deliveries#index")
    end

    it "routes to #new" do
      get("/order_deliveries/new").should route_to("order_deliveries#new")
    end

    it "routes to #show" do
      get("/order_deliveries/1").should route_to("order_deliveries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/order_deliveries/1/edit").should route_to("order_deliveries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/order_deliveries").should route_to("order_deliveries#create")
    end

    it "routes to #update" do
      put("/order_deliveries/1").should route_to("order_deliveries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/order_deliveries/1").should route_to("order_deliveries#destroy", :id => "1")
    end

  end
end
