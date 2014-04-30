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

describe CashRecordsController do

  # This should return the minimal set of attributes required to create a valid
  # CashRecord. As you add validations to CashRecord, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "usershift" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CashRecordsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all cash_records as @cash_records" do
      cash_record = CashRecord.create! valid_attributes
      get :index, {}, valid_session
      assigns(:cash_records).should eq([cash_record])
    end
  end

  describe "GET show" do
    it "assigns the requested cash_record as @cash_record" do
      cash_record = CashRecord.create! valid_attributes
      get :show, {:id => cash_record.to_param}, valid_session
      assigns(:cash_record).should eq(cash_record)
    end
  end

  describe "GET new" do
    it "assigns a new cash_record as @cash_record" do
      get :new, {}, valid_session
      assigns(:cash_record).should be_a_new(CashRecord)
    end
  end

  describe "GET edit" do
    it "assigns the requested cash_record as @cash_record" do
      cash_record = CashRecord.create! valid_attributes
      get :edit, {:id => cash_record.to_param}, valid_session
      assigns(:cash_record).should eq(cash_record)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CashRecord" do
        expect {
          post :create, {:cash_record => valid_attributes}, valid_session
        }.to change(CashRecord, :count).by(1)
      end

      it "assigns a newly created cash_record as @cash_record" do
        post :create, {:cash_record => valid_attributes}, valid_session
        assigns(:cash_record).should be_a(CashRecord)
        assigns(:cash_record).should be_persisted
      end

      it "redirects to the created cash_record" do
        post :create, {:cash_record => valid_attributes}, valid_session
        response.should redirect_to(CashRecord.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved cash_record as @cash_record" do
        # Trigger the behavior that occurs when invalid params are submitted
        CashRecord.any_instance.stub(:save).and_return(false)
        post :create, {:cash_record => { "usershift" => "invalid value" }}, valid_session
        assigns(:cash_record).should be_a_new(CashRecord)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CashRecord.any_instance.stub(:save).and_return(false)
        post :create, {:cash_record => { "usershift" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested cash_record" do
        cash_record = CashRecord.create! valid_attributes
        # Assuming there are no other cash_records in the database, this
        # specifies that the CashRecord created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CashRecord.any_instance.should_receive(:update).with({ "usershift" => "" })
        put :update, {:id => cash_record.to_param, :cash_record => { "usershift" => "" }}, valid_session
      end

      it "assigns the requested cash_record as @cash_record" do
        cash_record = CashRecord.create! valid_attributes
        put :update, {:id => cash_record.to_param, :cash_record => valid_attributes}, valid_session
        assigns(:cash_record).should eq(cash_record)
      end

      it "redirects to the cash_record" do
        cash_record = CashRecord.create! valid_attributes
        put :update, {:id => cash_record.to_param, :cash_record => valid_attributes}, valid_session
        response.should redirect_to(cash_record)
      end
    end

    describe "with invalid params" do
      it "assigns the cash_record as @cash_record" do
        cash_record = CashRecord.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CashRecord.any_instance.stub(:save).and_return(false)
        put :update, {:id => cash_record.to_param, :cash_record => { "usershift" => "invalid value" }}, valid_session
        assigns(:cash_record).should eq(cash_record)
      end

      it "re-renders the 'edit' template" do
        cash_record = CashRecord.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CashRecord.any_instance.stub(:save).and_return(false)
        put :update, {:id => cash_record.to_param, :cash_record => { "usershift" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested cash_record" do
      cash_record = CashRecord.create! valid_attributes
      expect {
        delete :destroy, {:id => cash_record.to_param}, valid_session
      }.to change(CashRecord, :count).by(-1)
    end

    it "redirects to the cash_records list" do
      cash_record = CashRecord.create! valid_attributes
      delete :destroy, {:id => cash_record.to_param}, valid_session
      response.should redirect_to(cash_records_url)
    end
  end

end
