class AddlistingtoWebsites < ActiveRecord::Migration[5.0]
  def change
  	add_reference :inventories, :website, foreign_key: true
  end
end