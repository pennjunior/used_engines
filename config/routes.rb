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
  resources :car_engines
  resources :engine_orders, only: [:index]
  resources :reviews, only: [ :index, :show ]
  devise_for :users

  resources :carts do 
    scope module: :carts do 
      resources :purchases, only: [:new, :create] do 
        get :success, on: :collection
      end
      resources :stripe_checkouts, only: [ :create]
    end
  end
 get "cart/checkout", to: "carts#checkout"

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
  get 'faq', to: 'pages#faq'
  get 'feed/google', to: 'feed#google', defaults: { format: 'xml' }

  # routes for the controller
  # resources :orders, only: [:create, :index ]
  # get "orders/success", to: "orders#success"
  # get "orders/cancel", to: "orders#cancel"
  post "cart/add_item", to: "carts#add_item"
  post "cart/remove/:id", to: "carts#remove_item", as: :cart_remove_item
  get "cart/checkout", to: "carts#checkout"

  # resource :cart, only: [:show] do
  #   post "add_item", to: "carts#add_item"
  #   post "remove_item/:id", to: "carts#remove_item", as: "remove_item"
  #   get "checkout", to: "carts#checkout"
  # end


  # resources :carts, only: [:show] do
  #   member do
  #     post "add_item/:engine_id", to: "carts#add_item", as: :add_item
  #     delete "remove_item/:engine_id", to: "carts#remove_item", as: :remove_item
  #   end
  # end

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
