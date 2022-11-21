Rails.application.routes.draw do
  get "/companies" => "companies#index"
  get "/companies/:id" => "companies#show"
  post "/companies" => "companies#create"
end
