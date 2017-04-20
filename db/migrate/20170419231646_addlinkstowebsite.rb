class Addlinkstowebsite < ActiveRecord::Migration[5.0]
  def change
  	add_column :websites, :facebooklink, :string
    add_column :websites, :twitterlink, :string
    add_column :websites, :youtubelink, :string	
  end
end
