Rails.application.routes.draw do
  root 'patients#index'
  
  	resources :patients do
    	resources :summaries do
  			resources :medicines
  		end
    resources :contacts
	end
end
