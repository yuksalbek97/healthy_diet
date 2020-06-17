Rails.application.routes.draw do
  resources :results
  resources :users
  resources :carbs
  resources :vegetables
  resources :proteins

  patch "/sessions/update_view", to: 'sessions#update_view', as: 'reset_session'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
