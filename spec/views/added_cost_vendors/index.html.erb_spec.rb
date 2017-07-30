require 'rails_helper'

RSpec.describe "added_cost_vendors/index", type: :view do
  before(:each) do
    assign(:added_cost_vendors, [
      AddedCostVendor.create!(
        :name => "Name",
        :contact => "Contact"
      ),
      AddedCostVendor.create!(
        :name => "Name",
        :contact => "Contact"
      )
    ])
  end

  it "renders a list of added_cost_vendors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
  end
end
