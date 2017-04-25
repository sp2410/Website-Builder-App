require 'rails_helper'

RSpec.describe "sectiontypes/show", type: :view do
  before(:each) do
    @sectiontype = assign(:sectiontype, Sectiontype.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
