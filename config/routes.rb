Rails.application.routes.draw do
  get "/signup" => "users#new"
  post "/users" => "users#create"

  # Sessions
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
  resources :jobs
end
