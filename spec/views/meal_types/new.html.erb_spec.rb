require 'spec_helper'

describe "meal_types/new" do
  before(:each) do
    assign(:meal_type, stub_model(MealType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new meal_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meal_types_path, :method => "post" do
      assert_select "input#meal_type_name", :name => "meal_type[name]"
    end
  end
end
