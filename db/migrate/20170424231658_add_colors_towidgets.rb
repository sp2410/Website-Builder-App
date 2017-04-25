class AddColorsTowidgets < ActiveRecord::Migration[5.0]
  def change
  	add_column :sectiontypes, :image_border, :string
  	add_column :sectiontypes, :text_color, :string
  end
end
