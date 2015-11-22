Rails.application.routes.draw do  
  root 'pages#index'
  resources :property_options 
  resources :properties
 
	namespace :admin do
	  resources :cities
	  resources :states
	  resources :countries	  
	  resources :property_types
	  resources :plans 
    resources :options
	end

	devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users do
  	member do
  		get 'properties'
  	end
  end
end
