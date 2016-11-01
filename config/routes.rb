Rails.application.routes.draw do
  resources :equipment_types
  get 'welcome/index'

  resources :bookings
  resources :stocks
  devise_for :users

  resources :hardwares

  root 'welcome#index'
end
