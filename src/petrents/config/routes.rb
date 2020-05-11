Rails.application.routes.draw do
  devise_for :users
  get "/", to: "pages#home", as: "root"

  get "/petlistings", to: "petlistings#index"
  get "petlistings/:id", to: "petlistings#show"
  get "petlistings/create", to:"petlistings#create"
end
