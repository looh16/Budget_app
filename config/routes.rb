Rails.application.routes.draw do
  root to: 'entities#index'

  devise_for :users

   
end
