Rails.application.routes.draw do
  get "/companies" => "companies#index"
  get "/companies/:id" => "companies#show"
  post "/companies" => "companies#create"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  # Sessions
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
  resources :jobs
end
