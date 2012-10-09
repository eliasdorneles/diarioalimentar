require 'spec_helper'

describe "meals/index" do
  before(:each) do
    assign(:meals, [
      stub_model(Meal,
        :user => nil,
        :meal_type => nil,
        :rating => 1,
        :comments => "Comments"
      ),
      stub_model(Meal,
        :user => nil,
        :meal_type => nil,
        :rating => 1,
        :comments => "Comments"
      )
    ])
  end

  it "renders a list of meals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Comments".to_s, :count => 2
  end
end
