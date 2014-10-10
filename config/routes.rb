Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  
  namespace :api, path: '', constraints: {subdomain: 'api'}, defaults: {format: 'json'} do
    namespace :v1 do
      resources :teachers
    end
  end
end
