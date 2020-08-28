Rails.application.routes.draw do
  resources :reviews
  resources :cart_items
  resources :carts
  resources :items
  resources :categories
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
