class AddbackgroundcolorToPageSections < ActiveRecord::Migration[5.0]
  def change
  	add_column :page_sections, :background_color, :string
  end
end
