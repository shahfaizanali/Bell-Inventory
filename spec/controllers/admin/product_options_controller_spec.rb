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

describe Admin::ProductOptionsController do

  # This should return the minimal set of attributes required to create a valid
  # Admin::ProductOption. As you add validations to Admin::ProductOption, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Admin::ProductOptionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all admin_product_options as @admin_product_options" do
      product_option = Admin::ProductOption.create! valid_attributes
      get :index, {}, valid_session
      assigns(:admin_product_options).should eq([product_option])
    end
  end

  describe "GET show" do
    it "assigns the requested admin_product_option as @admin_product_option" do
      product_option = Admin::ProductOption.create! valid_attributes
      get :show, {:id => product_option.to_param}, valid_session
      assigns(:admin_product_option).should eq(product_option)
    end
  end

  describe "GET new" do
    it "assigns a new admin_product_option as @admin_product_option" do
      get :new, {}, valid_session
      assigns(:admin_product_option).should be_a_new(Admin::ProductOption)
    end
  end

  describe "GET edit" do
    it "assigns the requested admin_product_option as @admin_product_option" do
      product_option = Admin::ProductOption.create! valid_attributes
      get :edit, {:id => product_option.to_param}, valid_session
      assigns(:admin_product_option).should eq(product_option)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Admin::ProductOption" do
        expect {
          post :create, {:admin_product_option => valid_attributes}, valid_session
        }.to change(Admin::ProductOption, :count).by(1)
      end

      it "assigns a newly created admin_product_option as @admin_product_option" do
        post :create, {:admin_product_option => valid_attributes}, valid_session
        assigns(:admin_product_option).should be_a(Admin::ProductOption)
        assigns(:admin_product_option).should be_persisted
      end

      it "redirects to the created admin_product_option" do
        post :create, {:admin_product_option => valid_attributes}, valid_session
        response.should redirect_to(Admin::ProductOption.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved admin_product_option as @admin_product_option" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::ProductOption.any_instance.stub(:save).and_return(false)
        post :create, {:admin_product_option => {  }}, valid_session
        assigns(:admin_product_option).should be_a_new(Admin::ProductOption)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::ProductOption.any_instance.stub(:save).and_return(false)
        post :create, {:admin_product_option => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested admin_product_option" do
        product_option = Admin::ProductOption.create! valid_attributes
        # Assuming there are no other admin_product_options in the database, this
        # specifies that the Admin::ProductOption created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Admin::ProductOption.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => product_option.to_param, :admin_product_option => { "these" => "params" }}, valid_session
      end

      it "assigns the requested admin_product_option as @admin_product_option" do
        product_option = Admin::ProductOption.create! valid_attributes
        put :update, {:id => product_option.to_param, :admin_product_option => valid_attributes}, valid_session
        assigns(:admin_product_option).should eq(product_option)
      end

      it "redirects to the admin_product_option" do
        product_option = Admin::ProductOption.create! valid_attributes
        put :update, {:id => product_option.to_param, :admin_product_option => valid_attributes}, valid_session
        response.should redirect_to(product_option)
      end
    end

    describe "with invalid params" do
      it "assigns the admin_product_option as @admin_product_option" do
        product_option = Admin::ProductOption.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::ProductOption.any_instance.stub(:save).and_return(false)
        put :update, {:id => product_option.to_param, :admin_product_option => {  }}, valid_session
        assigns(:admin_product_option).should eq(product_option)
      end

      it "re-renders the 'edit' template" do
        product_option = Admin::ProductOption.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Admin::ProductOption.any_instance.stub(:save).and_return(false)
        put :update, {:id => product_option.to_param, :admin_product_option => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested admin_product_option" do
      product_option = Admin::ProductOption.create! valid_attributes
      expect {
        delete :destroy, {:id => product_option.to_param}, valid_session
      }.to change(Admin::ProductOption, :count).by(-1)
    end

    it "redirects to the admin_product_options list" do
      product_option = Admin::ProductOption.create! valid_attributes
      delete :destroy, {:id => product_option.to_param}, valid_session
      response.should redirect_to(admin_product_options_url)
    end
  end

end
