require 'rails_helper'

RSpec.describe "floor_plans/show", type: :view do
  before(:each) do
    @floor_plan = assign(:floor_plan, FloorPlan.create!(
      :floor_planned => false,
      :amount_floor_planned => 2.5,
      :percentcharged => 3.5,
      :admin_fee => 4.5,
      :setup_fee => 5.5,
      :additional_fee => 6.5,
      :length_of_floor_plan => 7.5,
      :days_untill_firstcurtailment => 8,
      :days_untill_secondcurtailment => 9,
      :days_untill_third_curtailment => 10,
      :company_name => "Company Name",
      :company_contact => "Company Contact",
      :total => 11.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/6.5/)
    expect(rendered).to match(/7.5/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Company Contact/)
    expect(rendered).to match(/11.5/)
  end
end
