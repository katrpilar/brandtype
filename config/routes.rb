Rails.application.routes.draw do
  get 'logos/index'

  get 'profile/index'
  get 'brand/new'

  root 'businesses#new'

  resources :businesses
  resources :brand
  resources :logos
  resources :profiles


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
