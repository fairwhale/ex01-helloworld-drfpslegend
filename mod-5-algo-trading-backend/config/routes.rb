Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :algorithms
      resources :orders
      resources :positions
      resources :accounts
      get '/account', to: 'accounts#show_account'
      get '/