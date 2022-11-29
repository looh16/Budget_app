Rails.application.routes.draw do
  root to: 'groups#index'

  devise_for :users

  resources :users do
   resources :groups, only: [:index ,:show, :new, :create,  :destroy] do
    resources :entities, only: [:index ,:show, :new, :create,  :destroy]
  end
end
end
