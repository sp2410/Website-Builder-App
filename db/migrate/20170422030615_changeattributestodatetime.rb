class Changeattributestodatetime < ActiveRecord::Migration[5.0]
  def change
  	change_column :timetables, :start_time, :datetime
  	change_column :timetables, :end_time, :datetime
  end
end
