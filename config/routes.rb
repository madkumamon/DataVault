DataVault::Application.routes.draw do
  use_doorkeeper do
    controllers :applications => 'oauth/applications'
  end
  root :to => "oauth/applications#index"

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :stored_data
    end
  end

  devise_for :users
  resources :main
  resources :stored_data
end
