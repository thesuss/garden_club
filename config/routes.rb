Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: "users/omniauth_callbacks" }
  resources :users do
    resources :articles
  end
  root controller: :home, action: :index
  get 'profile', controller: :profile, action: :index
end
