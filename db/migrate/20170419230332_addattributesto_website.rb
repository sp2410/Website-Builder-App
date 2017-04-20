class AddattributestoWebsite < ActiveRecord::Migration[5.0]
  def change
  	add_column :websites, :phone, :string
  	add_column :websites, :address, :string
  	add_column :websites, :latitude, :float
  	add_column :websites, :longitude, :float      

  	add_column :websites, :city, :string
  	add_column :websites, :state, :string
  	add_column :websites, :zipcode, :string


  	add_column :page_sections, :header, :string
  	add_column :page_sections, :paragraph, :string
  	add_column :page_sections, :image, :string
  	


  	
  
  end
end
