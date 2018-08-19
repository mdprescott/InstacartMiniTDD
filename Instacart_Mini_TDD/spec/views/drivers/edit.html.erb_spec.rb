require 'rails_helper'

RSpec.describe "drivers/edit", type: :view do
  before(:each) do
    @driver = assign(:driver, Driver.create!(
      :name => "MyString",
      :address => "MyString",
      :phone_number => "MyString"
    ))
  end

  it "renders the edit driver form" do
    render

    assert_select "form[action=?][method=?]", driver_path(@driver), "post" do

      assert_select "input[name=?]", "driver[name]"

      assert_select "input[name=?]", "driver[address]"

      assert_select "input[name=?]", "driver[phone_number]"
    end
  end
end
