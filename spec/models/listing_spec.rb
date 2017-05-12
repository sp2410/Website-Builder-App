require "rails_helper"

describe 'Listing'  do 
	describe "#check listing" do 
			
		it "create populates listings" do

			a = Listing.new("http://localhost:3000/categories.json")
			b = a.getresponse("admin@gmail.com")
			#b = a.alllisting

		end 		
	end
end



