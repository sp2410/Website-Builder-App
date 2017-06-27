class Addimagetotemplatecss < ActiveRecord::Migration[5.0]
  def change
  	add_column :template_csses, :cssimage, :string
  end
end
