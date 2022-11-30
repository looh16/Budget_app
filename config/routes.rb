Rails.application.routes.draw do
  root to: 'groups#index'

  devise_for :users
  

  resources :users
  resources :splash, only: [:index]
  resources :groups, only: [:index, :new, :create] do
    resources :entities, only: [:index, :new, :create]
  end
end
