Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  get 'registration/index'
  resources :users
  root to: "home#index"
end
