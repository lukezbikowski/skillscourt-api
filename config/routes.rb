Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  
  constraints subdomain: /^api/, format: 'json' do
    scope module: 'api' do
      namespace :v1, defaults: {format: 'json'} do
        # Define your routes here
      end
    end
  end
end
