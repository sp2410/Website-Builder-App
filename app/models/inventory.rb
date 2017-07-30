class Inventory < ApplicationRecord
	
	belongs_to :website
	validates_uniqueness_of :vin
	validates_presence_of :title

	mount_uploader :image, ImageUploader
	
	mount_uploader :imagefront, ImageUploader
	mount_uploader :imageback, ImageUploader
	mount_uploader :imageleft, ImageUploader
	mount_uploader :imageright, ImageUploader
	mount_uploader :frontinterior, ImageUploader
	mount_uploader :rearinterior, ImageUploader

		
	# after_validation :geocode
	

	def self.search(params)
		# if params
		# 	listings = Listing.all
		# 	listings = listings.joins(:category).where("categories.name like '#{params[:category].downcase}'") if params[:category].present?
		# 	listings = listings.where("listings.NewUsed = '#{params[:NewUsed][0].upcase}'") if params[:NewUsed].present?
		# 	listings = listings.where("price >= ?", "#{params[:minprice]}") if params[:minprice].present?			
		# 	listings = listings.where("price <= ?", "#{params[:maxprice]}") if params[:maxprice].present?			
					

		# 	if params[:radius].present?
		# 		listings = listings.near(params[:location],params[:radius]) if params[:location].present?
		# 	else
		# 		listings = listings.near(params[:location],200) if params[:location].present?
		# 	end

		# 	listings

		# else
		# 	all
		# end

		if params
			where('title Like ?', "%#{params}")
		else
			all
		end

	end



end
