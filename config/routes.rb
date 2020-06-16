Rails.application.routes.draw do
  resources :results
  resources :users
  resources :carbs
  resources :vegetables
  resources :proteins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
