require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :description => "Description",
        :price => 2.5,
        :looseweight => false,
        :warehouse => nil
      ),
      Item.create!(
        :description => "Description",
        :price => 2.5,
        :looseweight => false,
        :warehouse => nil
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
