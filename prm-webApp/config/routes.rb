Rails.application.routes.draw do
  root 'patients#index'
  devise_for :users
  get 'home/index', as: 'Welcome'
  resources :home
  
  	resources :patients do
    	resources :summaries 
    resources :contacts
  resources :medicines
	end
end
