class AddattributesTosectiontype < ActiveRecord::Migration[5.0]
  def change
  	add_column :sectiontypes, :type, :string
  	add_column :sectiontypes, :title, :string
  	add_column :sectiontypes, :type_url, :string
	add_column :sectiontypes, :font_type, :string
	add_column :sectiontypes, :details, :string	
  end
end
