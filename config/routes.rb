Rails.application.routes.draw do
  resources :results
  resources :users
  resources :carbs
  resources :vegetables
  resources :proteins

  patch "/sessions/update_view", to: 'sessions#update_view', as: 'reset_session'
  delete "/sessions/logout", to: 'sessions#logout', as: 'logout'
  # get "/sessions", to: "sessions#create", as: "login"
  get "sessions/new", to: "sessions#new", as: "new_login"
  post "/sessions", to: "sessions#create", as: "login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/signup", to: "user#new", as: "signup"
  post "/users", to: "users#create", as: "signin"



end
