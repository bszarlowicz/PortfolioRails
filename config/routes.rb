Rails.application.routes.draw do
  devise_for :users, skip: [:registrations, :passwords, :confirmations]

  get "up" => "rails/health#show", as: :rails_health_check

  namespace :admin do
    resources :users
    resources :reviews
    root to: "users#index"
  end

  resources :users, only: [:index, :show, :edit, :update]
  resources :reviews, only: [:index, :new, :create]

  # Defines the root path route ("/")
  root 'landing#index'
end
