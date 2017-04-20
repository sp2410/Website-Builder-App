class Page < ApplicationRecord
	belongs_to :website
	has_many :page_sections
end
