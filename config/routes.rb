Rails.application.routes.draw do
  resources :carts
  resources :cart_items
  resources :orders
  resources :users
  resources :products
  root to: "products#index"
  post 'authenticate', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
