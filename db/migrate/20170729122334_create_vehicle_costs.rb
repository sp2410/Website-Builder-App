class CreateVehicleCosts < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_costs do |t|
      t.datetime :purchasedate
      t.float :originalcost
      t.float :buyerfee
      t.float :lotfee
      t.float :addedcst
      t.float :floorplancost
      t.float :totalcost
      t.string :methodofpayment

      t.timestamps
    end
  end
end
