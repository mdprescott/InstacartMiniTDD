require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :name => "MyString",
      :address => "MyString",
      :phone_number => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "input[name=?]", "customer[name]"

      assert_select "input[name=?]", "customer[address]"

      assert_select "input[name=?]", "customer[phone_number]"
    end
  end
end
