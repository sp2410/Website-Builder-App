require 'rails_helper'

RSpec.describe "vehicle_costs/index", type: :view do
  before(:each) do
    assign(:vehicle_costs, [
      VehicleCost.create!(
        :originalcost => 2.5,
        :buyerfee => 3.5,
        :lotfee => 4.5,
        :addedcst => 5.5,
        :floorplancost => 6.5,
        :totalcost => 7.5,
        :methodofpayment => "Methodofpayment"
      ),
      VehicleCost.create!(
        :originalcost => 2.5,
        :buyerfee => 3.5,
        :lotfee => 4.5,
        :addedcst => 5.5,
        :floorplancost => 6.5,
        :totalcost => 7.5,
        :methodofpayment => "Methodofpayment"
      )
    ])
  end

  it "renders a list of vehicle_costs" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
    assert_select "tr>td", :text => 6.5.to_s, :count => 2
    assert_select "tr>td", :text => 7.5.to_s, :count => 2
    assert_select "tr>td", :text => "Methodofpayment".to_s, :count => 2
  end
end
