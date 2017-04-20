class CreateWebsites < ActiveRecord::Migration[5.0]
  def change
    create_table :websites do |t|
      t.string :title
      t.string :logo
      t.string :mainimage
      t.string :subheading

      t.timestamps
    end
  end
end
