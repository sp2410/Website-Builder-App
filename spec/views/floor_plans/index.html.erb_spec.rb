require 'rails_helper'

RSpec.describe "floor_plans/index", type: :view do
  before(:each) do
    assign(:floor_plans, [
      FloorPlan.create!(
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
      ),
      FloorPlan.create!(
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
      )
    ])
  end

  it "renders a list of floor_plans" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
    assert_select "tr>td", :text => 6.5.to_s, :count => 2
    assert_select "tr>td", :text => 7.5.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company Contact".to_s, :count => 2
    assert_select "tr>td", :text => 11.5.to_s, :count => 2
  end
end
