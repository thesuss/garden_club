Rails.application.routes.draw do
  devise_for :users
  resources :users
  get 'users/new'
  #placeholder until we get a real homepage route
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
