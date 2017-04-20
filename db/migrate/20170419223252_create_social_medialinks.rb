class CreateSocialMedialinks < ActiveRecord::Migration[5.0]
  def change
    create_table :social_medialinks do |t|

      t.timestamps
    end
  end
end
