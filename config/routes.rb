Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users

  constraints subdomain: /^api/, format: 'json' do
    scope module: 'api' do
      namespace :v1, defaults: {format: 'json'} do
        resources :students, only: [:index, :show]
      end
    end
  end
end
