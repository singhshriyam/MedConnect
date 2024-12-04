Rails.application.routes.draw do
  get 'consultations/index'
  get 'consultations/show'
  get 'consultations/new'
  get 'consultations/create'
  devise_for :users
  root to: "pages#home"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "profile", to: "pages#profile"
  get "getintouch", to: "pages#getintouch"
  get "about", to: "pages#about"

  # Defines the root path route ("/")
  # root "posts#index"
  resources :doctors, only: [:index, :show, :update, :new, :create]
  resources :doctors do
    resources :appointments, only: [:new, :create]
  end

  resources :appointments, only: [:index, :show]
  resources :consultations, only: [:index, :show, :new, :create]
end
