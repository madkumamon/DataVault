DataVault::Application.routes.draw do
  use_doorkeeper

  root :to => "client_application#index"

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :stored_data
    end
  end

  devise_for :users
  resources :main
  resources :client_application
  resources :stored_data
end
