Rails.application.routes.draw do
  devise_for :users
  root to: "restaurants#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :users, only: %i[index new show create]
  resources :restaurants, only: %i[index show new create] do
    resources :meals, only: %i[index new create edit update]

    resources :restaurant_reviews, only: %i[create]
  end
  resources :restaurants, only: %i[destroy]
  resources :orders, only: %i[index show]
  resources :meals, only: %i[show destroy] do
    resources :meal_reviews, only: %i[create new]
  end
  resources :carts, only: %i[show update]
  resources :order_lists, only: %i[create]
  get "dashboard", to: "dashboard#my_dashboard"
  get "dashboard", to: "dashboard#create_orders"
  get "dashboard", to: "dashboard#my_orders"

end
