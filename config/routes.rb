Rails.application.routes.draw do
  get 'cart/show'
  get 'order_lists/new'
  get 'order_lists/create'
  get 'order_lists/edit'
  get 'order_lists/update'
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
  end
  resources :orders, only: %i[index new show create edit update]
  resources :restaurants, only: %i[destroy]
  resources :orders, only: %i[destroy]
  resources :meals, only: %i[show destroy]
  resources :carts, only: %i[show]
end
