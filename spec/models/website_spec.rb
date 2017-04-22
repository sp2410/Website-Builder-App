require "rails_helper"

describe 'website'  do 

	describe "#create_home_page" do 

		before :each do
			@template = TemplateCss.new(name: "mycss")			
		end	


		it "create a home page for the website" do 
			@website = Website.new(title: "mywebsite")
			@website.template_csses_id = @template.id
			@website.save

			status = Website.create_home_page(@website)
			expect(@website.pages.first.title).to eq("home")
			expect(@website.pages.first.show_page_on_index).to eq(true)
			expect(status).to eq(true)
		end
	end

end