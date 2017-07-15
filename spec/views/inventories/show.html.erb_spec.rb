require 'rails_helper'

RSpec.describe "inventories/show", type: :view do
  before(:each) do
    @inventory = assign(:inventory, Inventory.create!(
      :title => "Title",
      :description => "MyText",
      :street => "Street",
      :city => "City",
      :state => "State",
      :zipcode => "Zipcode",
      :latitude => 2.5,
      :longitude => 3.5,
      :user_id => 4,
      :image => "Image",
      :year => 5,
      :miles => 6,
      :transmission => "Transmission",
      :color => "Color",
      :cylinder => "Cylinder",
      :fuel => "Fuel",
      :drive => "Drive",
      :price => 7,
      :newused => "Newused",
      :vin => "Vin",
      :model => "Model",
      :trim => "Trim",
      :enginedescription => "Enginedescription",
      :interiorcolor => "Interiorcolor",
      :imagefront => "Imagefront",
      :imageback => "Imageback",
      :imageleft => "Imageleft",
      :imageright => "Imageright",
      :frontinterior => "Frontinterior",
      :rearinterior => "Rearinterior"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Transmission/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Cylinder/)
    expect(rendered).to match(/Fuel/)
    expect(rendered).to match(/Drive/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/Newused/)
    expect(rendered).to match(/Vin/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Trim/)
    expect(rendered).to match(/Enginedescription/)
    expect(rendered).to match(/Interiorcolor/)
    expect(rendered).to match(/Imagefront/)
    expect(rendered).to match(/Imageback/)
    expect(rendered).to match(/Imageleft/)
    expect(rendered).to match(/Imageright/)
    expect(rendered).to match(/Frontinterior/)
    expect(rendered).to match(/Rearinterior/)
  end
end
