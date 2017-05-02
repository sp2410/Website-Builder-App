class Addwebsitetouser < ActiveRecord::Migration[5.0]
  def change
  	add_reference :websites, :user, foreign_key: true
  end
end
