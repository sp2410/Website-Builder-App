class Website < ApplicationRecord
	has_many :pages	
	has_one :social_medialinks

	has_one :template_csses
end

