class CreateAddedCostVendors < ActiveRecord::Migration[5.0]
  def change
    create_table :added_cost_vendors do |t|
      t.string :name
      t.string :contact

      t.timestamps
    end
  end
end
