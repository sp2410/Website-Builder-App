class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
      t.string :title
      t.text :description
      t.string :vin
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode
      t.float :latitude
      t.float :longitude      
      t.string :image
      t.integer :year
      t.integer :miles
      t.string :transmission
      t.string :color
      t.string :cylinder
      t.string :fuel
      t.string :drive
      t.integer :price, :default => 0
      t.string :newused      
      t.string :model
      t.string :trim
      t.string :enginedescription
      t.string :interiorcolor
      t.string :imagefront
      t.string :imageback
      t.string :imageleft
      t.string :imageright
      t.string :frontinterior
      t.string :rearinterior

      t.timestamps
    end
  end
end
