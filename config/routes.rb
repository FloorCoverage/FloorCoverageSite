Rails.application.routes.draw do
  root 'users#new'

  get "coverage", to: "coverage#index"
  get "welcome", to: "users#welcome"

  resources :schedules
  resources :coverage
  resources :roles
  resources :employees
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end