class CreatePreviousOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :previous_owners do |t|
      t.string :name
      t.string :street_address
      t.string :zip
      t.string :city
      t.string :state
      t.string :phone
      t.string :used_vehicle_for

      t.timestamps
    end
  end
end
