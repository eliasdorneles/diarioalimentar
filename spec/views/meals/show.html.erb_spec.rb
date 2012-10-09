require 'spec_helper'

describe "meals/show" do
  before(:each) do
    @meal = assign(:meal, stub_model(Meal,
      :user => nil,
      :meal_type => nil,
      :rating => 1,
      :comments => "Comments"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(/Comments/)
  end
end
