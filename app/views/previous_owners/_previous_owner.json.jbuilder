json.extract! previous_owner, :id, :name, :street_address, :zip, :city, :state, :phone, :used_vehicle_for, :created_at, :updated_at
json.url previous_owner_url(previous_owner, format: :json)
