require 'rails_helper'

RSpec.describe "line_items/new", type: :view do
  before(:each) do
    assign(:line_item, LineItem.new(
      :item => nil,
      :basket => nil
    ))
  end

  it "renders new line_item form" do
    render

    assert_select "form[action=?][method=?]", line_items_path, "post" do

      assert_select "input#line_item_item_id[name=?]", "line_item[item_id]"

      assert_select "input#line_item_basket_id[name=?]", "line_item[basket_id]"
    end
  end
end
