class AddsocialmediaLInktowebsitee < ActiveRecord::Migration[5.0]
  def change
  	add_reference :social_medialinks,:websites, foreign_key: true  
  end
end
