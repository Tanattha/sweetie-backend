Rails.application.routes.draw do
  resources :cart_products
  resources :products
  resources :reviews
  resources :carts
  resources :categories
  resources :users

  root to: 'users#home'
 
end
