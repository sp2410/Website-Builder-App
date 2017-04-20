class Addingwebsitetopages < ActiveRecord::Migration[5.0]
  def change
  	add_reference :pages, :website, foreign_key: true
  end
end
