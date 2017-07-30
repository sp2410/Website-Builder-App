class CreateAddedCosts < ActiveRecord::Migration[5.0]
  def change
    create_table :added_costs do |t|
      t.datetime :cost_date
      t.float :cost
      t.boolean :billed
      t.float :labor_cost_total
      t.float :total
      t.string :method_of_payment

      t.timestamps
    end
  end
end
