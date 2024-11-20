Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :doctors do
    resources :appointments, only: [:new, :create]
  end
end
