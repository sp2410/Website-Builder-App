class AddAttributesToTimetable < ActiveRecord::Migration[5.0]
  def change
  	add_column :timetables, :day, :string
  	add_column :timetables, :start_time, :datetime
  	add_column :timetables, :end_time, :datetime
  	add_reference :timetables,:website, foreign_key: true  
  end
end
