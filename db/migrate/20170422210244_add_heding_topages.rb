class AddHedingTopages < ActiveRecord::Migration[5.0]
  def change
  	add_column :pages, :header, :string
  	add_column :pages, :header_color, :string
  	add_column :pages, :subheader, :string
  	add_column :pages, :subheader_color, :string
  	add_column :pages, :page_color, :string
  end
end
