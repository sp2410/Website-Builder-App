require 'rails_helper'

RSpec.describe "previous_owners/index", type: :view do
  before(:each) do
    assign(:previous_owners, [
      PreviousOwner.create!(
        :name => "Name",
        :street_address => "Street Address",
        :zip => "Zip",
        :city => "City",
        :state => "State",
        :phone => "Phone",
        :used_vehicle_for => "Used Vehicle For"
      ),
      PreviousOwner.create!(
        :name => "Name",
        :street_address => "Street Address",
        :zip => "Zip",
        :city => "City",
        :state => "State",
        :phone => "Phone",
        :used_vehicle_for => "Used Vehicle For"
      )
    ])
  end

  it "renders a list of previous_owners" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Used Vehicle For".to_s, :count => 2
  end
end
