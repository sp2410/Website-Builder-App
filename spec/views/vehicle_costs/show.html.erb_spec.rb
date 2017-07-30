require 'rails_helper'

RSpec.describe "vehicle_costs/show", type: :view do
  before(:each) do
    @vehicle_cost = assign(:vehicle_cost, VehicleCost.create!(
      :originalcost => 2.5,
      :buyerfee => 3.5,
      :lotfee => 4.5,
      :addedcst => 5.5,
      :floorplancost => 6.5,
      :totalcost => 7.5,
      :methodofpayment => "Methodofpayment"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/6.5/)
    expect(rendered).to match(/7.5/)
    expect(rendered).to match(/Methodofpayment/)
  end
end
