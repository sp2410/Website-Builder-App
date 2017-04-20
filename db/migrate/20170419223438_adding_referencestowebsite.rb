class AddingReferencestowebsite < ActiveRecord::Migration[5.0]
  def change  	
  	add_reference :websites, :template_csses, foreign_key: true  		
  end
end

