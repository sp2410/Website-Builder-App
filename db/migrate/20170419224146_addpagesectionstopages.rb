class Addpagesectionstopages < ActiveRecord::Migration[5.0]
  def change
  	add_reference :page_sections,:pages, foreign_key: true
  end
end
