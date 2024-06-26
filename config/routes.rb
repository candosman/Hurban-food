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
  resources :restaurants do
    resources :meals, only: %i[index new create edit update]
    resources :restaurant_reviews, only: %i[create]
  end
  resources :orders, only: %i[index show] do
    member do
      patch :mark_as_delivered
    end
  end
  resources :meals, only: %i[show destroy] do
    resources :meal_reviews, only: %i[create new]
  end
  resources :carts, only: %i[show update] do
    member do
      patch :empty_cart
    end
  end
  resources :order_lists, only: %i[create destroy]
  get "dashboard", to: "dashboard#my_dashboard"
  get "my_orders", to: "dashboard#my_orders", as: 'my_orders'
  get "my_restaurants", to: "restaurants#my_restaurants"
end
