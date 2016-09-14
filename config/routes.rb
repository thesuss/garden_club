Rails.application.routes.draw do
  devise_for :users, path: "users",path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }

  resources :users do
    resources :articles
  end
  root controller: :home, action: :index
end
