require 'rails_helper'

RSpec.describe "added_cost_vendors/new", type: :view do
  before(:each) do
    assign(:added_cost_vendor, AddedCostVendor.new(
      :name => "MyString",
      :contact => "MyString"
    ))
  end

  it "renders new added_cost_vendor form" do
    render

    assert_select "form[action=?][method=?]", added_cost_vendors_path, "post" do

      assert_select "input#added_cost_vendor_name[name=?]", "added_cost_vendor[name]"

      assert_select "input#added_cost_vendor_contact[name=?]", "added_cost_vendor[contact]"
    end
  end
end
