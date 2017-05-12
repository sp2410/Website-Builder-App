class Listing
		
	include HTTParty
	
	attr_accessor :response, :base_uri

	def initialize(base_uri)
		@response = HTTParty.get(base_uri)
		@body = JSON.parse(@response.body)
	end
	
	def getresponse(useremail)			
		#return @body[0]
		@finalarray = []


		@body.each do |i|
			if i["email"]				
				if ((i["email"].to_s).eql? useremail)					
					p i["email"]
					@finalarray << i		
					p "hello"			
				end
			end			
		end
		
		return @finalarray
	end

	def alllisting		
		@body.each do |i|
			p "hello"
		end

		return @body
	end
	
end

