require 'rails_helper'

RSpec.describe "previous_owners/show", type: :view do
  before(:each) do
    @previous_owner = assign(:previous_owner, PreviousOwner.create!(
      :name => "Name",
      :street_address => "Street Address",
      :zip => "Zip",
      :city => "City",
      :state => "State",
      :phone => "Phone",
      :used_vehicle_for => "Used Vehicle For"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Street Address/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Used Vehicle For/)
  end
end
