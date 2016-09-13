Rails.application.routes.draw do
  devise_for :users
  get 'registration/index'
  resources :users
  #placeholder until we get a real homepage route
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
