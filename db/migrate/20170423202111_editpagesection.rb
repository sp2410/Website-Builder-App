class Editpagesection < ActiveRecord::Migration[5.0]
  def up
    remove_column :page_sections, :title
    remove_column :page_sections, :header
    remove_column :page_sections, :paragraph
    remove_column :page_sections, :image
  end

  def down
    add_column :page_sections, :title, :string
    add_column :page_sections, :header, :string
    add_column :page_sections, :paragraph, :text
    add_column :page_sections, :image, :string
  end
end
