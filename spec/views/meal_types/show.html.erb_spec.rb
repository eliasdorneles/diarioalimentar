require 'spec_helper'

describe "meal_types/show" do
  before(:each) do
    @meal_type = assign(:meal_type, stub_model(MealType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
