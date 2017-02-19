Rails.application.routes.draw do
  root 'pins#index'

  resource :users, only: :show
  resource :badges, only: :show

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: 'pins#index'
  get 'signout', to: 'sessions#destroy', as: 'signout'
end
