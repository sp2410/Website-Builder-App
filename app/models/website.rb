class Website < ApplicationRecord
	belongs_to :user
	has_many :pages	
	has_many :timetables
	has_one :social_medialinks
	has_many :messages
	has_many :listings

	has_one :template_csses


	geocoded_by :full_address
	after_validation :geocode

	mount_uploader :logo, ImageUploader
	mount_uploader :mainimage, ImageUploader


	def full_address
		[city, state, zipcode].join(', ')
	end


	def self.create_home_page(website)
		
		home = Page.find_or_create_by(title: "home", website_id: website.id, show_page_on_index: true) 	
		#home = Page.find_or_create_by_title_and_website_id(title: "home", website_id: website.id, show_page_on_index: true)	

		home.website_id = website.id
		home.save!

		inventory = Page.find_or_create_by(title: "inventory", website_id: website.id, show_page_on_index: true) 
		#inventory = Page.find_or_create_by_title_and_website_id(title: "inventory", website_id: website.id, show_page_on_index: true)	
		inventory.website_id = website.id
		inventory.save!		

		if (home.save) and (inventory.save)
			return true
		else
			return false
		end

	end
end

