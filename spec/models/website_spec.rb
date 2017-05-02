require "rails_helper"

describe 'website'  do 

	describe "#create_home_page" do 

		before :each do
			@template = TemplateCss.new(name: "mycss")	
			@template.save!		
			@user = User.new(email: "hello@gmail.com", password: "123abc", password_confirmation: "123abc")
			@user.save!
		end	


		it "create a home page for the website" do 
			@website = Website.new(title: "mywebsite", user_id: @user.id)
			@website.template_csses_id = @template.id
			@website.save

			@website1 = Website.new(title: "mywebsite", user_id: @user.id)
			@website1.template_csses_id = @template.id
			@website1.save


			if @website.save!
				status = Website.create_home_page(@website)
				
				expect(@website.pages.first.title).to eq("home")							
				expect(@website.pages.first.website_id).to eq(@website.id)
				expect(@website.pages.first.show_page_on_index).to eq(true)
				expect(status).to eq(true)

				status1 = Website.create_home_page(@website1)
				expect(@website1.pages.first.website_id).to eq(@website1.id)
				
			end
		end
	end

end
