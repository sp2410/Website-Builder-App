require 'rails_helper'

RSpec.describe "inventories/index", type: :view do
  before(:each) do
    assign(:inventories, [
      Inventory.create!(
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
      ),
      Inventory.create!(
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
      )
    ])
  end

  it "renders a list of inventories" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Transmission".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Cylinder".to_s, :count => 2
    assert_select "tr>td", :text => "Fuel".to_s, :count => 2
    assert_select "tr>td", :text => "Drive".to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => "Newused".to_s, :count => 2
    assert_select "tr>td", :text => "Vin".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Trim".to_s, :count => 2
    assert_select "tr>td", :text => "Enginedescription".to_s, :count => 2
    assert_select "tr>td", :text => "Interiorcolor".to_s, :count => 2
    assert_select "tr>td", :text => "Imagefront".to_s, :count => 2
    assert_select "tr>td", :text => "Imageback".to_s, :count => 2
    assert_select "tr>td", :text => "Imageleft".to_s, :count => 2
    assert_select "tr>td", :text => "Imageright".to_s, :count => 2
    assert_select "tr>td", :text => "Frontinterior".to_s, :count => 2
    assert_select "tr>td", :text => "Rearinterior".to_s, :count => 2
  end
end
