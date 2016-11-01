Rails.application.routes.draw do
  get 'welcome/index'

  resources :bookings
  resources :stocks
  devise_for :users

  resources :hardwares

  root 'welcome#index'
end
