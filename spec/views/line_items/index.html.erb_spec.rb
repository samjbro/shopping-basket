require 'rails_helper'

RSpec.describe "line_items/index", type: :view do
  before(:each) do
    assign(:line_items, [
      LineItem.create!(
        :item => nil,
        :basket => nil
      ),
      LineItem.create!(
        :item => nil,
        :basket => nil
      )
    ])
  end

  it "renders a list of line_items" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 4
  end
end
