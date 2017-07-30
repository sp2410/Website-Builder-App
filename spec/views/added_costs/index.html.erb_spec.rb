require 'rails_helper'

RSpec.describe "added_costs/index", type: :view do
  before(:each) do
    assign(:added_costs, [
      AddedCost.create!(
        :cost => 2.5,
        :billed => false,
        :labor_cost_total => 3.5,
        :total => 4.5,
        :method_of_payment => "Method Of Payment"
      ),
      AddedCost.create!(
        :cost => 2.5,
        :billed => false,
        :labor_cost_total => 3.5,
        :total => 4.5,
        :method_of_payment => "Method Of Payment"
      )
    ])
  end

  it "renders a list of added_costs" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => "Method Of Payment".to_s, :count => 2
  end
end
