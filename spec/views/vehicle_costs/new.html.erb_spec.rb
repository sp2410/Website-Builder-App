require 'rails_helper'

RSpec.describe "vehicle_costs/new", type: :view do
  before(:each) do
    assign(:vehicle_cost, VehicleCost.new(
      :originalcost => 1.5,
      :buyerfee => 1.5,
      :lotfee => 1.5,
      :addedcst => 1.5,
      :floorplancost => 1.5,
      :totalcost => 1.5,
      :methodofpayment => "MyString"
    ))
  end

  it "renders new vehicle_cost form" do
    render

    assert_select "form[action=?][method=?]", vehicle_costs_path, "post" do

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
