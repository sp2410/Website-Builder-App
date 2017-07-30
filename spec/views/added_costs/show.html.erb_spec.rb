require 'rails_helper'

RSpec.describe "added_costs/show", type: :view do
  before(:each) do
    @added_cost = assign(:added_cost, AddedCost.create!(
      :cost => 2.5,
      :billed => false,
      :labor_cost_total => 3.5,
      :total => 4.5,
      :method_of_payment => "Method Of Payment"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/Method Of Payment/)
  end
end
