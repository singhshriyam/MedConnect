Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "profile", to: "pages#profile"
  get "getintouch", to: "pages#getintouch"
  get "about", to: "pages#about"

  resources :doctors, only: %i[index show update new create]
  resources :doctors do
    resources :appointments, only: %i[new create]
  end

  resources :appointments, only: %i[index show destroy] do
    resources :messages, only: %i[create index]
      member do
        patch :update_prescription
      end
  end

  resources :questions, only: %i[index create] do
    delete "delete_all", on: :collection
  end
end
