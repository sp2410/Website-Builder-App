require 'rails_helper'

RSpec.describe "sectiontypes/edit", type: :view do
  before(:each) do
    @sectiontype = assign(:sectiontype, Sectiontype.create!())
  end

  it "renders the edit sectiontype form" do
    render

    assert_select "form[action=?][method=?]", sectiontype_path(@sectiontype), "post" do
    end
  end
end
