require 'rails_helper'

RSpec.describe "added_costs/edit", type: :view do
  before(:each) do
    @added_cost = assign(:added_cost, AddedCost.create!(
      :cost => 1.5,
      :billed => false,
      :labor_cost_total => 1.5,
      :total => 1.5,
      :method_of_payment => "MyString"
    ))
  end

  it "renders the edit added_cost form" do
    render

    assert_select "form[action=?][method=?]", added_cost_path(@added_cost), "post" do

      assert_select "input#added_cost_cost[name=?]", "added_cost[cost]"

      assert_select "input#added_cost_billed[name=?]", "added_cost[billed]"

      assert_select "input#added_cost_labor_cost_total[name=?]", "added_cost[labor_cost_total]"

      assert_select "input#added_cost_total[name=?]", "added_cost[total]"

      assert_select "input#added_cost_method_of_payment[name=?]", "added_cost[method_of_payment]"
    end
  end
end
