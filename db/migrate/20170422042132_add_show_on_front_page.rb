class AddShowOnFrontPage < ActiveRecord::Migration[5.0]
  def change
  	add_column :pages, :show_page_on_index, :boolean, :default => false  	
  end
end
