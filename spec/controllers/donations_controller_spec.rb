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

describe DonationsController do

  # This should return the minimal set of attributes required to create a valid
  # Donation. As you add validations to Donation, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "donator" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DonationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all donations as @donations" do
      donation = Donation.create! valid_attributes
      get :index, {}, valid_session
      assigns(:donations).should eq([donation])
    end
  end

  describe "GET show" do
    it "assigns the requested donation as @donation" do
      donation = Donation.create! valid_attributes
      get :show, {:id => donation.to_param}, valid_session
      assigns(:donation).should eq(donation)
    end
  end

  describe "GET new" do
    it "assigns a new donation as @donation" do
      get :new, {}, valid_session
      assigns(:donation).should be_a_new(Donation)
    end
  end

  describe "GET edit" do
    it "assigns the requested donation as @donation" do
      donation = Donation.create! valid_attributes
      get :edit, {:id => donation.to_param}, valid_session
      assigns(:donation).should eq(donation)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Donation" do
        expect {
          post :create, {:donation => valid_attributes}, valid_session
        }.to change(Donation, :count).by(1)
      end

      it "assigns a newly created donation as @donation" do
        post :create, {:donation => valid_attributes}, valid_session
        assigns(:donation).should be_a(Donation)
        assigns(:donation).should be_persisted
      end

      it "redirects to the created donation" do
        post :create, {:donation => valid_attributes}, valid_session
        response.should redirect_to(Donation.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved donation as @donation" do
        # Trigger the behavior that occurs when invalid params are submitted
        Donation.any_instance.stub(:save).and_return(false)
        post :create, {:donation => { "donator" => "invalid value" }}, valid_session
        assigns(:donation).should be_a_new(Donation)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Donation.any_instance.stub(:save).and_return(false)
        post :create, {:donation => { "donator" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested donation" do
        donation = Donation.create! valid_attributes
        # Assuming there are no other donations in the database, this
        # specifies that the Donation created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Donation.any_instance.should_receive(:update).with({ "donator" => "" })
        put :update, {:id => donation.to_param, :donation => { "donator" => "" }}, valid_session
      end

      it "assigns the requested donation as @donation" do
        donation = Donation.create! valid_attributes
        put :update, {:id => donation.to_param, :donation => valid_attributes}, valid_session
        assigns(:donation).should eq(donation)
      end

      it "redirects to the donation" do
        donation = Donation.create! valid_attributes
        put :update, {:id => donation.to_param, :donation => valid_attributes}, valid_session
        response.should redirect_to(donation)
      end
    end

    describe "with invalid params" do
      it "assigns the donation as @donation" do
        donation = Donation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Donation.any_instance.stub(:save).and_return(false)
        put :update, {:id => donation.to_param, :donation => { "donator" => "invalid value" }}, valid_session
        assigns(:donation).should eq(donation)
      end

      it "re-renders the 'edit' template" do
        donation = Donation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Donation.any_instance.stub(:save).and_return(false)
        put :update, {:id => donation.to_param, :donation => { "donator" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested donation" do
      donation = Donation.create! valid_attributes
      expect {
        delete :destroy, {:id => donation.to_param}, valid_session
      }.to change(Donation, :count).by(-1)
    end

    it "redirects to the donations list" do
      donation = Donation.create! valid_attributes
      delete :destroy, {:id => donation.to_param}, valid_session
      response.should redirect_to(donations_url)
    end
  end

end
