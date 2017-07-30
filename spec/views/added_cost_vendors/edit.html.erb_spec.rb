require 'rails_helper'

RSpec.describe "added_cost_vendors/edit", type: :view do
  before(:each) do
    @added_cost_vendor = assign(:added_cost_vendor, AddedCostVendor.create!(
      :name => "MyString",
      :contact => "MyString"
    ))
  end

  it "renders the edit added_cost_vendor form" do
    render

    assert_select "form[action=?][method=?]", added_cost_vendor_path(@added_cost_vendor), "post" do

      assert_select "input#added_cost_vendor_name[name=?]", "added_cost_vendor[name]"

      assert_select "input#added_cost_vendor_contact[name=?]", "added_cost_vendor[contact]"
    end
  end
end
