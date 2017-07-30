class AddPreviousOwnerToInventory < ActiveRecord::Migration[5.0]
  def change
  	add_reference :previous_owners, :inventory, foreign_key: true
  end
end
