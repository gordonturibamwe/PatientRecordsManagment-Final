Rails.application.routes.draw do
<<<<<<< HEAD
  root 'patients#index'
  
  	resources :patients do
    	resources :summaries do
  			resources :medicines
  		end
    resources :contacts
	end
=======
	root 'patients#index'
  resources :patients
>>>>>>> 234c9b8af761cd64312d5ac2a3a601d1ccb93988
end
