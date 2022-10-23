Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :algorithms
      resources :orders
      resources :positions
      resources :accounts
      get '/account', to: 'accounts#show_account'
      get '/positions/:id', to: 'positions#show_positions'
      get '/orders/:id', to: 'orders#show_orders'

    end
