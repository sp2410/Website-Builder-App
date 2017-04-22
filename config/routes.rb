Rails.application.routes.draw do  
  
  
	resources :template_csses


	resources :websites do	
		resources :timetables
		resources :messages

		resources :pages do 
			resources :page_sections
		end
	end


root "websites#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
