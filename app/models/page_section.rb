class PageSection < ApplicationRecord
	belongs_to :page
	has_many :sectiontypes	
end
