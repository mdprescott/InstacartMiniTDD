require 'rails_helper'

RSpec.describe "drivers/index", type: :view do
  before(:each) do
    assign(:drivers, [
      Driver.create!(
        :name => "Name",
        :address => "Address",
        :phone_number => "Phone Number"
      ),
      Driver.create!(
        :name => "Name",
        :address => "Address",
        :phone_number => "Phone Number"
      )
    ])
  end

  it "renders a list of drivers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
  end
end
