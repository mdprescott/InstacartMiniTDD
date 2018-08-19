require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :description => "MyString",
      :price => 1.5,
      :looseweight => false,
      :warehouse => nil
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input[name=?]", "item[description]"

      assert_select "input[name=?]", "item[price]"

      assert_select "input[name=?]", "item[looseweight]"

      assert_select "input[name=?]", "item[warehouse_id]"
    end
  end
end
