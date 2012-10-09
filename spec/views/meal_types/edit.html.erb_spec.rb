require 'spec_helper'

describe "meal_types/edit" do
  before(:each) do
    @meal_type = assign(:meal_type, stub_model(MealType,
      :name => "MyString"
    ))
  end

  it "renders the edit meal_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meal_types_path(@meal_type), :method => "post" do
      assert_select "input#meal_type_name", :name => "meal_type[name]"
    end
  end
end
