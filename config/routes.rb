Rails.application.routes.draw do
  
 
    
  resources :zutatens
  devise_for :users
  resources :reviews
  get 'orders/index'
  get 'reviews/index'
  get 'home/index'
  get 'home/about'

  root  'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
