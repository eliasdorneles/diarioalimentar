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

describe MealTypesController do

  # This should return the minimal set of attributes required to create a valid
  # MealType. As you add validations to MealType, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MealTypesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all meal_types as @meal_types" do
      meal_type = MealType.create! valid_attributes
      get :index, {}, valid_session
      assigns(:meal_types).should eq([meal_type])
    end
  end

  describe "GET show" do
    it "assigns the requested meal_type as @meal_type" do
      meal_type = MealType.create! valid_attributes
      get :show, {:id => meal_type.to_param}, valid_session
      assigns(:meal_type).should eq(meal_type)
    end
  end

  describe "GET new" do
    it "assigns a new meal_type as @meal_type" do
      get :new, {}, valid_session
      assigns(:meal_type).should be_a_new(MealType)
    end
  end

  describe "GET edit" do
    it "assigns the requested meal_type as @meal_type" do
      meal_type = MealType.create! valid_attributes
      get :edit, {:id => meal_type.to_param}, valid_session
      assigns(:meal_type).should eq(meal_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new MealType" do
        expect {
          post :create, {:meal_type => valid_attributes}, valid_session
        }.to change(MealType, :count).by(1)
      end

      it "assigns a newly created meal_type as @meal_type" do
        post :create, {:meal_type => valid_attributes}, valid_session
        assigns(:meal_type).should be_a(MealType)
        assigns(:meal_type).should be_persisted
      end

      it "redirects to the created meal_type" do
        post :create, {:meal_type => valid_attributes}, valid_session
        response.should redirect_to(MealType.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved meal_type as @meal_type" do
        # Trigger the behavior that occurs when invalid params are submitted
        MealType.any_instance.stub(:save).and_return(false)
        post :create, {:meal_type => {}}, valid_session
        assigns(:meal_type).should be_a_new(MealType)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        MealType.any_instance.stub(:save).and_return(false)
        post :create, {:meal_type => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested meal_type" do
        meal_type = MealType.create! valid_attributes
        # Assuming there are no other meal_types in the database, this
        # specifies that the MealType created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        MealType.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => meal_type.to_param, :meal_type => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested meal_type as @meal_type" do
        meal_type = MealType.create! valid_attributes
        put :update, {:id => meal_type.to_param, :meal_type => valid_attributes}, valid_session
        assigns(:meal_type).should eq(meal_type)
      end

      it "redirects to the meal_type" do
        meal_type = MealType.create! valid_attributes
        put :update, {:id => meal_type.to_param, :meal_type => valid_attributes}, valid_session
        response.should redirect_to(meal_type)
      end
    end

    describe "with invalid params" do
      it "assigns the meal_type as @meal_type" do
        meal_type = MealType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MealType.any_instance.stub(:save).and_return(false)
        put :update, {:id => meal_type.to_param, :meal_type => {}}, valid_session
        assigns(:meal_type).should eq(meal_type)
      end

      it "re-renders the 'edit' template" do
        meal_type = MealType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MealType.any_instance.stub(:save).and_return(false)
        put :update, {:id => meal_type.to_param, :meal_type => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested meal_type" do
      meal_type = MealType.create! valid_attributes
      expect {
        delete :destroy, {:id => meal_type.to_param}, valid_session
      }.to change(MealType, :count).by(-1)
    end

    it "redirects to the meal_types list" do
      meal_type = MealType.create! valid_attributes
      delete :destroy, {:id => meal_type.to_param}, valid_session
      response.should redirect_to(meal_types_url)
    end
  end

end
