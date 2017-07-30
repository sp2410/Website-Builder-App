require 'rails_helper'

RSpec.describe "floor_plans/edit", type: :view do
  before(:each) do
    @floor_plan = assign(:floor_plan, FloorPlan.create!(
      :floor_planned => false,
      :amount_floor_planned => 1.5,
      :percentcharged => 1.5,
      :admin_fee => 1.5,
      :setup_fee => 1.5,
      :additional_fee => 1.5,
      :length_of_floor_plan => 1.5,
      :days_untill_firstcurtailment => 1,
      :days_untill_secondcurtailment => 1,
      :days_untill_third_curtailment => 1,
      :company_name => "MyString",
      :company_contact => "MyString",
      :total => 1.5
    ))
  end

  it "renders the edit floor_plan form" do
    render

    assert_select "form[action=?][method=?]", floor_plan_path(@floor_plan), "post" do

      assert_select "input#floor_plan_floor_planned[name=?]", "floor_plan[floor_planned]"

      assert_select "input#floor_plan_amount_floor_planned[name=?]", "floor_plan[amount_floor_planned]"

      assert_select "input#floor_plan_percentcharged[name=?]", "floor_plan[percentcharged]"

      assert_select "input#floor_plan_admin_fee[name=?]", "floor_plan[admin_fee]"

      assert_select "input#floor_plan_setup_fee[name=?]", "floor_plan[setup_fee]"

      assert_select "input#floor_plan_additional_fee[name=?]", "floor_plan[additional_fee]"

      assert_select "input#floor_plan_length_of_floor_plan[name=?]", "floor_plan[length_of_floor_plan]"

      assert_select "input#floor_plan_days_untill_firstcurtailment[name=?]", "floor_plan[days_untill_firstcurtailment]"

      assert_select "input#floor_plan_days_untill_secondcurtailment[name=?]", "floor_plan[days_untill_secondcurtailment]"

      assert_select "input#floor_plan_days_untill_third_curtailment[name=?]", "floor_plan[days_untill_third_curtailment]"

      assert_select "input#floor_plan_company_name[name=?]", "floor_plan[company_name]"

      assert_select "input#floor_plan_company_contact[name=?]", "floor_plan[company_contact]"

      assert_select "input#floor_plan_total[name=?]", "floor_plan[total]"
    end
  end
end
