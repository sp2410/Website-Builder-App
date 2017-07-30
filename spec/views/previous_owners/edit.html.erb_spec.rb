require 'rails_helper'

RSpec.describe "previous_owners/edit", type: :view do
  before(:each) do
    @previous_owner = assign(:previous_owner, PreviousOwner.create!(
      :name => "MyString",
      :street_address => "MyString",
      :zip => "MyString",
      :city => "MyString",
      :state => "MyString",
      :phone => "MyString",
      :used_vehicle_for => "MyString"
    ))
  end

  it "renders the edit previous_owner form" do
    render

    assert_select "form[action=?][method=?]", previous_owner_path(@previous_owner), "post" do

      assert_select "input#previous_owner_name[name=?]", "previous_owner[name]"

      assert_select "input#previous_owner_street_address[name=?]", "previous_owner[street_address]"

      assert_select "input#previous_owner_zip[name=?]", "previous_owner[zip]"

      assert_select "input#previous_owner_city[name=?]", "previous_owner[city]"

      assert_select "input#previous_owner_state[name=?]", "previous_owner[state]"

      assert_select "input#previous_owner_phone[name=?]", "previous_owner[phone]"

      assert_select "input#previous_owner_used_vehicle_for[name=?]", "previous_owner[used_vehicle_for]"
    end
  end
end
