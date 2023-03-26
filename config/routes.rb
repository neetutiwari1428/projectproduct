Rails.application.routes.draw do
  resources :wishlists
  resources :orders
  resources :itemcarts do
    member do
      get :orders, to: 'orders#create'
      get :remove_item, to: 'itemcarts#destroy'
    end
  end
  devise_for :merchants
  resources :idproofs
  resources :merchants
  resources :categories
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "merchants#index"

  # delete '/productimages/remove_image/:id' => 'productimages#remove_image', as: :remove_image

  # root "idproofs#index"
  root "products#index"

  resources :products do
  member do 
    get :wishlists, to: 'wishlists#create'
    get :itemcarts, to: 'itemcarts#cart'
  end
    resources :productimages
  end 
end
