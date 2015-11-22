Rails.application.routes.draw do
  root 'pages#index'
  resources :cities
  resources :states
  resources :countries
  devise_for :users
end
