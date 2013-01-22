DataVault::Application.routes.draw do
  root :to => "client_application#index"

  devise_for :users
  resources :main
  resources :client_application
  resources :stored_data
end
