class TemplateCss < ApplicationRecord
	has_many :websites	

	mount_uploader :cssimage, ImageUploader
end
