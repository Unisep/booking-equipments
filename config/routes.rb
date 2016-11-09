Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users

  resources :bookings do
    put :refund, on: :member
  end

  resources :equipment_types
  resources :stocks
  resources :hardwares

  root 'welcome#index'
end
