require 'rails_helper'

RSpec.describe "sectiontypes/new", type: :view do
  before(:each) do
    assign(:sectiontype, Sectiontype.new())
  end

  it "renders new sectiontype form" do
    render

    assert_select "form[action=?][method=?]", sectiontypes_path, "post" do
    end
  end
end
