class Fixsectiontypecolumn < ActiveRecord::Migration[5.0]
  def change
  	rename_column :sectiontypes, :type, :widget_type
  	
  end
end
