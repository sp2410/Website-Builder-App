module ApplicationHelper

	def sortable(column, title = nil)
	  title ||= "Sort By " + column.titleize 
	  css_class = column == sort_column ? "current #{sort_direction}" : nil
	  direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
	  link_to title, {:sort => column, :direction => direction, :page => nil}, {:class => css_class}
	end
end



