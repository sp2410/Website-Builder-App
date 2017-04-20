class AddCsSdescriptiontotemplatecss < ActiveRecord::Migration[5.0]
  def change
  	add_column :template_csses, :css_description, :string
  end
end
