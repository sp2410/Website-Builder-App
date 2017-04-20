class CreateTemplateCsses < ActiveRecord::Migration[5.0]
  def change
    create_table :template_csses do |t|
      t.string :name

      t.timestamps
    end
  end
end
