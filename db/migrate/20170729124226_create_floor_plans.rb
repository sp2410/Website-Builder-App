class CreateFloorPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :floor_plans do |t|
      t.boolean :floor_planned
      t.float :amount_floor_planned
      t.datetime :date_opened
      t.float :percentcharged
      t.float :admin_fee
      t.float :setup_fee
      t.float :additional_fee
      t.float :length_of_floor_plan
      t.integer :days_untill_firstcurtailment
      t.integer :days_untill_secondcurtailment
      t.integer :days_untill_third_curtailment
      t.string :company_name
      t.string :company_contact
      t.float :total

      t.timestamps
    end
  end
end
