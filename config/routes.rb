Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  
  namespace :api, path: '', constraints: {subdomain: 'api'} do
    namespace :v1 do
      resources :students
    end
  end
end
