Rails.application.routes.draw do
  resources :cart_products
  resources :products
  resources :reviews
  resources :carts
  resources :categories
  resources :users

  get '/checkout' => 'carts#checkout'


  get '/test', to: 'application#test'
end
