class AddFloorPlanCostToVehicleCost < ActiveRecord::Migration[5.0]
  def change
  	add_reference :floor_plans, :vehicle_cost, foreign_key: true
  end
end
