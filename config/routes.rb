Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  
  namespace :api do
    constraints subdomain: 'api' do
      match '/v1/students', {:via => :get, :to => 'students#index'}
    end
  end
end
