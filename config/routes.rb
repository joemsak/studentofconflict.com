Rails.application.routes.draw do
  resource :home, only: :show
  resources :packages, only: [:show, :index]
  root "homes#show"
end
