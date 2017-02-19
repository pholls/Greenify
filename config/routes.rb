Rails.application.routes.draw do
  root 'pins#index'

  resources :users, only: :show
  resources :badges, only: :show
  resources :pins

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: 'pins#index'
  get 'signout', to: 'sessions#destroy', as: 'signout'
  
end
