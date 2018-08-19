require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :description => "MyString",
      :price => 1.5,
      :looseweight => false,
      :warehouse => nil
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[description]"

      assert_select "input[name=?]", "item[price]"

      assert_select "input[name=?]", "item[looseweight]"

      assert_select "input[name=?]", "item[warehouse_id]"
    end
  end
end
