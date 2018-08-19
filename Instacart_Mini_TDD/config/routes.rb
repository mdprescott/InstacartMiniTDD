Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :drivers
  resources :customers
  resources :items
  resources :warehouses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
