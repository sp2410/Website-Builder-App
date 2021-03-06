Rails.application.routes.draw do  
  
 
  resources :floor_plans
  resources :added_cost_vendors
  resources :added_costs
  resources :previous_owners
  resources :vehicle_costs
  resources :inventories
  devise_for :users
	resources :template_csses


	resources :websites do	
		resources :timetables
		resources :messages
		resources :inventories do 
			collection {post :search, to: 'inventories#index'}
		end

		resources :pages do 
			resources :page_sections do 
				resources :sectiontypes
			end
		end
	end



root "websites#index"


match "/showall", to: "websites#showall", via: :get
match "/mywebsites", to: "websites#mywebsites", via: :get
match "/pricing", to: "other#pricing", via: :get

match '/help', to: 'other#help', via: :get
match '/scams', to: 'other#scams', via: :get
match '/safety', to: 'other#safety', via: :get
match '/terms', to: 'other#terms', via: :get
match '/policy', to: 'other#policy', via: :get
match '/about', to: 'other#aboutus', via: :get
match '/contact', to: 'other#contact', via: :get
match '/logomail', to: 'other#logomail', via: :get


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

