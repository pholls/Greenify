Rails.application.routes.draw do
  resource :users, only: :show
  resource :badges, only: :show
end
