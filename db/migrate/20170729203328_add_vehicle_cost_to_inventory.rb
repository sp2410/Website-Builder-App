class AddVehicleCostToInventory < ActiveRecord::Migration[5.0]
  def change
  	add_reference :vehicle_costs, :inventory, foreign_key: true
  end
end
