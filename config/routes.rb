Rails.application.routes.draw do
  root to: "pages#home"

  # get 'search', to: 'search#index'
  resources :cars do
    resources :car_orders, only: [:create]
    resource :saved_cars, only: [:create, :destroy], controller: "saved_cars"
  end
  resources :car_orders, only: [:index]
  resources :saved_cars, only: [:index]
  resources :engines do
    resources :engine_orders, only: [:new, :create]
    resource :saved_engines, only: [:create, :destroy], controller: "saved_engines"
  end
  resources :engine_orders, only: [:index]
  resources :reviews, only: [ :index, :show ]
  devise_for :users

  get '/audi', to: 'pages#audi'
  get '/bmw', to: 'pages#bmw'
  get '/ford', to: 'pages#ford'
  get '/nissan', to: 'pages#nissan'
  get '/peugeot', to: 'pages#peugeot'
  get '/toyota', to: 'pages#toyota'
  get '/volkswagen', to: 'pages#volkswagen'
  get '/mercedes', to: 'pages#mercedes'
  get '/carorders/:id/confirmation', to: 'car_orders#confirmation', as: 'order_confirmation'
  get 'engineorders/:id/confirmation', to: 'engine_orders#confirmation', as: 'engine_order_confirmation'

  # get 'engines/index'
  # get 'engines/show'
  # get 'engines/new'
  # get 'engines/create'
  # get 'engines/edit'
  # get 'engines/update'
  # get 'engines/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
