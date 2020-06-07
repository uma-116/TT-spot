Rails.application.routes.draw do

  devise_for :users
  root 'posts#index'

  resources :posts, only: [:index, :new, :create, :show, :update, :edit, :destroy]

  resources :users, only: [:show]
  
end
