require 'rails_helper'

RSpec.describe "sectiontypes/index", type: :view do
  before(:each) do
    assign(:sectiontypes, [
      Sectiontype.create!(),
      Sectiontype.create!()
    ])
  end

  it "renders a list of sectiontypes" do
    render
  end
end
