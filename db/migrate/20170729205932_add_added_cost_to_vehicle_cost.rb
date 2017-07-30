class AddAddedCostToVehicleCost < ActiveRecord::Migration[5.0]
  def change
  	add_reference :added_costs, :vehicle_costs, foreign_key: true
  end
end
