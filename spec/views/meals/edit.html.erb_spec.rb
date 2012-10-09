require 'spec_helper'

describe "meals/edit" do
  before(:each) do
    @meal = assign(:meal, stub_model(Meal,
      :user => nil,
      :meal_type => nil,
      :rating => 1,
      :comments => "MyString"
    ))
  end

  it "renders the edit meal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meals_path(@meal), :method => "post" do
      assert_select "input#meal_user", :name => "meal[user]"
      assert_select "input#meal_meal_type", :name => "meal[meal_type]"
      assert_select "input#meal_rating", :name => "meal[rating]"
      assert_select "input#meal_comments", :name => "meal[comments]"
    end
  end
end
