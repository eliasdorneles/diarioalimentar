require 'spec_helper'

describe "meals/new" do
  before(:each) do
    assign(:meal, stub_model(Meal,
      :user => nil,
      :meal_type => nil,
      :rating => 1,
      :comments => "MyString"
    ).as_new_record)
  end

  it "renders new meal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meals_path, :method => "post" do
      assert_select "input#meal_user", :name => "meal[user]"
      assert_select "input#meal_meal_type", :name => "meal[meal_type]"
      assert_select "input#meal_rating", :name => "meal[rating]"
      assert_select "input#meal_comments", :name => "meal[comments]"
    end
  end
end
