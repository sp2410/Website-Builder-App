class Addreferencetosectiontyep < ActiveRecord::Migration[5.0]
  def change
  	add_reference :sectiontypes, :page_section, foreign_key: true
  end
end
