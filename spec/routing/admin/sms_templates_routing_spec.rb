require "spec_helper"

describe Admin::SmsTemplatesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/sms_templates").should route_to("admin/sms_templates#index")
    end

    it "routes to #new" do
      get("/admin/sms_templates/new").should route_to("admin/sms_templates#new")
    end

    it "routes to #show" do
      get("/admin/sms_templates/1").should route_to("admin/sms_templates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/sms_templates/1/edit").should route_to("admin/sms_templates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/sms_templates").should route_to("admin/sms_templates#create")
    end

    it "routes to #update" do
      put("/admin/sms_templates/1").should route_to("admin/sms_templates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/sms_templates/1").should route_to("admin/sms_templates#destroy", :id => "1")
    end

  end
end
