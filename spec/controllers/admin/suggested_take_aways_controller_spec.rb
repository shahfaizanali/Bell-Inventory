require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Admin::SuggestedTakeAwaysController do

  # This should return the minimal set of attributes required to create a valid
  # Admin::SuggestedTakeAway. As you add validations to Admin::SuggestedTakeAway, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "user" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Admin::SuggestedTakeAwaysController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all admin_suggested_take_aways as @admin_suggested_take_aways" do
      suggested_take_away = Admin::SuggestedTakeAway.create! valid_attributes
      get :index, {}, valid_session
      assigns(:admin_suggested_take_aways).should eq([suggested_take_away])
    end
  end

  describe "GET show" do
    it "assigns the requested admin_suggested_take_away as @admin_suggested_take_away" do
      suggested_take_away = Admin::SuggestedTakeAway.create! valid_attributes
      get :show, {:id => suggested_take_away.to_param}, valid_session
      assigns(:admin_suggested_take_away).should eq(suggested_take_away)
    end
  end

  describe "GET new" do
    it "assigns a new admin_suggested_take_away as @admin_suggested_take_away" do
      get :new, {}, valid_session
      assigns(:admin_suggested_take_away).should be_a_new(Admin::SuggestedTakeAway)
    end
  end

  describe "GET edit" do
    it "assigns the requested admin_suggested_take_away as @admin_suggested_take_away" do
      suggested_take_away = Admin::SuggestedTakeAway.create! valid_attributes
      get :edit, {:id => suggested_take_away.to_param}, valid_session
      assigns(:admin_suggested_take_away).should eq(suggested_take_away)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Admin::SuggestedTakeAway" do
        expect {
          post :create, {:admin_suggested_take_away => valid_attributes}, valid_session
        }.to change(Admin::SuggestedTakeAway, :count).by(1)
      end

      it "assigns a newly created admin_suggested_take_away as @admin_suggested_take_away" do
        post :create, {:admin_suggested_take_away => valid_attributes}, valid_session
        assigns(:admin_suggested_take_away).should be_a(Admin::SuggestedTakeAway)
        assigns(:admin_suggested_take_away).should be_persisted
      end

      it "redirects to the created admin_suggested_take_away" do
        post :create, {:admin_suggested_take_away => valid_attributes}, valid_session
        response.should redirect_to(Admin::SuggestedTakeAway.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved admin_suggested_take_away as @admin_suggested_take_away" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::SuggestedTakeAway.any_instance.stub(:save).and_return(false)
        post :create, {:admin_suggested_take_away => { "user" => "invalid value" }}, valid_session
        assigns(:admin_suggested_take_away).should be_a_new(Admin::SuggestedTakeAway)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::SuggestedTakeAway.any_instance.stub(:save).and_return(false)
        post :create, {:admin_suggested_take_away => { "user" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested admin_suggested_take_away" do
        suggested_take_away = Admin::SuggestedTakeAway.create! valid_attributes
        # Assuming there are no other admin_suggested_take_aways in the database, this
        # specifies that the Admin::SuggestedTakeAway created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Admin::SuggestedTakeAway.any_instance.should_receive(:update).with({ "user" => "" })
        put :update, {:id => suggested_take_away.to_param, :admin_suggested_take_away => { "user" => "" }}, valid_session
      end

      it "assigns the requested admin_suggested_take_away as @admin_suggested_take_away" do
        suggested_take_away = Admin::SuggestedTakeAway.create! valid_attributes
        put :update, {:id => suggested_take_away.to_param, :admin_suggested_take_away => valid_attributes}, valid_session
        assigns(:admin_suggested_take_away).should eq(suggested_take_away)
      end

      it "redirects to the admin_suggested_take_away" do
        suggested_take_away = Admin::SuggestedTakeAway.create! valid_attributes
        put :update, {:id => suggested_take_away.to_param, :admin_suggested_take_away => valid_attributes}, valid_session
        response.should redirect_to(suggested_take_away)
      end
    end

    describe "with invalid params" do
      it "assigns the admin_suggested_take_away as @admin_suggested_take_away" do
        suggested_take_away = Admin::SuggestedTakeAway.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::SuggestedTakeAway.any_instance.stub(:save).and_return(false)
        put :update, {:id => suggested_take_away.to_param, :admin_suggested_take_away => { "user" => "invalid value" }}, valid_session
        assigns(:admin_suggested_take_away).should eq(suggested_take_away)
      end

      it "re-renders the 'edit' template" do
        suggested_take_away = Admin::SuggestedTakeAway.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::SuggestedTakeAway.any_instance.stub(:save).and_return(false)
        put :update, {:id => suggested_take_away.to_param, :admin_suggested_take_away => { "user" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested admin_suggested_take_away" do
      suggested_take_away = Admin::SuggestedTakeAway.create! valid_attributes
      expect {
        delete :destroy, {:id => suggested_take_away.to_param}, valid_session
      }.to change(Admin::SuggestedTakeAway, :count).by(-1)
    end

    it "redirects to the admin_suggested_take_aways list" do
      suggested_take_away = Admin::SuggestedTakeAway.create! valid_attributes
      delete :destroy, {:id => suggested_take_away.to_param}, valid_session
      response.should redirect_to(admin_suggested_take_aways_url)
    end
  end

end
