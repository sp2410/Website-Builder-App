json.extract! inventory, :id, :title, :description, :street, :city, :state, :zipcode, :latitude, :longitude, :user_id, :image, :year, :miles, :transmission, :color, :cylinder, :fuel, :drive, :price, :newused, :vin, :model, :trim, :enginedescription, :interiorcolor, :imagefront, :imageback, :imageleft, :imageright, :frontinterior, :rearinterior, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)