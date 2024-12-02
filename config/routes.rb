Rails.application.routes.draw do
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
  resources :doctors, only: %i[index show update new create]
  resources :doctors do
    resources :appointments, only: %i[new create]
  end

  resources :appointments, only: %i[index show] do
    resources :messages, only: %i[create index]
  end
end
