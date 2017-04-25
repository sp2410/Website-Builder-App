class AddNumberofElementsToPaeSection < ActiveRecord::Migration[5.0]
  def change
  	add_column :page_sections, :number_of_elements, :string
  end
end
