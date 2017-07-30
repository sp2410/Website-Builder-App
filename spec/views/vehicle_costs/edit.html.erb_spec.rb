require 'rails_helper'

RSpec.describe "vehicle_costs/edit", type: :view do
  before(:each) do
    @vehicle_cost = assign(:vehicle_cost, VehicleCost.create!(
      :originalcost => 1.5,
      :buyerfee => 1.5,
      :lotfee => 1.5,
      :addedcst => 1.5,
      :floorplancost => 1.5,
      :totalcost => 1.5,
      :methodofpayment => "MyString"
    ))
  end

  it "renders the edit vehicle_cost form" do
    render

    assert_select "form[action=?][method=?]", vehicle_cost_path(@vehicle_cost), "post" do

      assert_select "input#vehicle_cost_originalcost[name=?]", "vehicle_cost[originalcost]"

      assert_select "input#vehicle_cost_buyerfee[name=?]", "vehicle_cost[buyerfee]"

      assert_select "input#vehicle_cost_lotfee[name=?]", "vehicle_cost[lotfee]"

      assert_select "input#vehicle_cost_addedcst[name=?]", "vehicle_cost[addedcst]"

      assert_select "input#vehicle_cost_floorplancost[name=?]", "vehicle_cost[floorplancost]"

      assert_select "input#vehicle_cost_totalcost[name=?]", "vehicle_cost[totalcost]"

      assert_select "input#vehicle_cost_methodofpayment[name=?]", "vehicle_cost[methodofpayment]"
    end
  end
end
