Rails.application.routes.draw do

  devise_for :users
  root 'posts#index'

  resources :posts do
  collection do
    get 'search'
    end
  end

  resources :users, only: [:show]
  
end
