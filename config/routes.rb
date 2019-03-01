Rails.application.routes.draw do
  devise_for :users
  root controller: :bookings, action: :index
  resources :bookings, only: [:index, :create]
end
