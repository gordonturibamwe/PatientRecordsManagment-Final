Rails.application.routes.draw do
  resources :medicines
  root 'patients#index'
  devise_for :users
  get 'home/index', as: 'Welcome'
  resources :home
  
  	resources :patients do
    	resources :summaries do
  			resources :medicines
  		end
    resources :contacts
	end
end
