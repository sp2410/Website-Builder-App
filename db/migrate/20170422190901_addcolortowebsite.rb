class Addcolortowebsite < ActiveRecord::Migration[5.0]
  def change
	add_column :websites, :title_color, :string
	add_column :websites, :subheading_color, :string
	add_column :websites, :footer_color, :string
	add_column :websites, :footer_text_color, :string

  end
end

