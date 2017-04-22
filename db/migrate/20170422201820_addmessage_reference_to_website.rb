class AddmessageReferenceToWebsite < ActiveRecord::Migration[5.0]
  def change
	add_reference :messages, :website, foreign_key: true
  end
end
