require 'rails_helper'

RSpec.describe "inventories/edit", type: :view do
  before(:each) do
    @inventory = assign(:inventory, Inventory.create!(
      :title => "MyString",
      :description => "MyText",
      :street => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zipcode => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :user_id => 1,
      :image => "MyString",
      :year => 1,
      :miles => 1,
      :transmission => "MyString",
      :color => "MyString",
      :cylinder => "MyString",
      :fuel => "MyString",
      :drive => "MyString",
      :price => 1,
      :newused => "MyString",
      :vin => "MyString",
      :model => "MyString",
      :trim => "MyString",
      :enginedescription => "MyString",
      :interiorcolor => "MyString",
      :imagefront => "MyString",
      :imageback => "MyString",
      :imageleft => "MyString",
      :imageright => "MyString",
      :frontinterior => "MyString",
      :rearinterior => "MyString"
    ))
  end

  it "renders the edit inventory form" do
    render

    assert_select "form[action=?][method=?]", inventory_path(@inventory), "post" do

      assert_select "input#inventory_title[name=?]", "inventory[title]"

      assert_select "textarea#inventory_description[name=?]", "inventory[description]"

      assert_select "input#inventory_street[name=?]", "inventory[street]"

      assert_select "input#inventory_city[name=?]", "inventory[city]"

      assert_select "input#inventory_state[name=?]", "inventory[state]"

      assert_select "input#inventory_zipcode[name=?]", "inventory[zipcode]"

      assert_select "input#inventory_latitude[name=?]", "inventory[latitude]"

      assert_select "input#inventory_longitude[name=?]", "inventory[longitude]"

      assert_select "input#inventory_user_id[name=?]", "inventory[user_id]"

      assert_select "input#inventory_image[name=?]", "inventory[image]"

      assert_select "input#inventory_year[name=?]", "inventory[year]"

      assert_select "input#inventory_miles[name=?]", "inventory[miles]"

      assert_select "input#inventory_transmission[name=?]", "inventory[transmission]"

      assert_select "input#inventory_color[name=?]", "inventory[color]"

      assert_select "input#inventory_cylinder[name=?]", "inventory[cylinder]"

      assert_select "input#inventory_fuel[name=?]", "inventory[fuel]"

      assert_select "input#inventory_drive[name=?]", "inventory[drive]"

      assert_select "input#inventory_price[name=?]", "inventory[price]"

      assert_select "input#inventory_newused[name=?]", "inventory[newused]"

      assert_select "input#inventory_vin[name=?]", "inventory[vin]"

      assert_select "input#inventory_model[name=?]", "inventory[model]"

      assert_select "input#inventory_trim[name=?]", "inventory[trim]"

      assert_select "input#inventory_enginedescription[name=?]", "inventory[enginedescription]"

      assert_select "input#inventory_interiorcolor[name=?]", "inventory[interiorcolor]"

      assert_select "input#inventory_imagefront[name=?]", "inventory[imagefront]"

      assert_select "input#inventory_imageback[name=?]", "inventory[imageback]"

      assert_select "input#inventory_imageleft[name=?]", "inventory[imageleft]"

      assert_select "input#inventory_imageright[name=?]", "inventory[imageright]"

      assert_select "input#inventory_frontinterior[name=?]", "inventory[frontinterior]"

      assert_select "input#inventory_rearinterior[name=?]", "inventory[rearinterior]"
    end
  end
end
