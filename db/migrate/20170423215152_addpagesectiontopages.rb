class Addpagesectiontopages < ActiveRecord::Migration[5.0]
  def change
  	add_reference :page_sections,:page, foreign_key: true
  end
end
