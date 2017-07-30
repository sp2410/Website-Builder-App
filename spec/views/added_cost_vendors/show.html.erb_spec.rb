require 'rails_helper'

RSpec.describe "added_cost_vendors/show", type: :view do
  before(:each) do
    @added_cost_vendor = assign(:added_cost_vendor, AddedCostVendor.create!(
      :name => "Name",
      :contact => "Contact"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Contact/)
  end
end
