Rails.application.routes.draw do
  resource :home, only: :show, controller: :home
  resource :about, only: :show, controller: :about

  resources :packages, only: [:show, :index]

  root "home#show"
end
