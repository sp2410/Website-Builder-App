class AddAttributesToTimetable < ActiveRecord::Migration[5.0]
  def change
  	add_column :timetables, :day, :string
  	add_column :timetables, :start_time, :string
  	add_column :timetables, :end_time, :string
  	add_reference :timetables,:website, foreign_key: true  
  end
end
