Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :restaurants, only: %i[index new show create] do
    resources :orders, only: %i[index new show create edit update]
    resources :meal, only: %i[index new show create edit update]
    resources :users, only: %i[index new show create]
  end
  resources :restaurants, only: %i[destroy]
  resources :orders, only: %i[destroy]
  resources :meal, only: %i[destroy]
  resources :users, only: %i[destroy]
end
