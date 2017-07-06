class Sectiontype < ApplicationRecord
	belongs_to :page_section
	mount_uploader :type_url, ImageUploader
end
