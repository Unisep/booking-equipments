Rails.application.routes.draw do
  resources :bookings
  resources :stocks
  devise_for :users

  resources :hardwares

  root controller: :hardwares, action: :index
end
