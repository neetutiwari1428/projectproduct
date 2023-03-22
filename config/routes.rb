Rails.application.routes.draw do
  resources :productimages
  # get 'productsactives/index'
  # get 'productsactives/show'
  # get 'productsactives/edit'
  # get 'productsactives/new'
  resources :productdactives
  devise_for :merchants
  resources :products
  resources :idproofs
  resources :merchants
  resources :categories
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "merchants#index"
  root "idproofs#index"
end
