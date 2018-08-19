require 'rails_helper'

RSpec.describe "order_items/index", type: :view do
  before(:each) do
    assign(:order_items, [
      OrderItem.create!(
        :order => nil,
        :item => nil,
        :quantity => 2.5
      ),
      OrderItem.create!(
        :order => nil,
        :item => nil,
        :quantity => 2.5
      )
    ])
  end

  it "renders a list of order_items" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
