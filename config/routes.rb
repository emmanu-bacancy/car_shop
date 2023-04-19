Rails.application.routes.draw do
  resources :vehicles
  resources :two_wheelers, controller: 'vehicles', type: 'TwoWheeler' 
  resources :four_wheelers, controller: 'vehicles', type: 'FourWheeler' 
  resources :companies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
