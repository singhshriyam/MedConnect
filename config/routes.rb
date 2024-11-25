Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :doctors, only: [:index]
  resources :doctors do
    resources :appointments, only: [:new, :create]
  end

  resources :appointments, only: [:index, :show]
end
