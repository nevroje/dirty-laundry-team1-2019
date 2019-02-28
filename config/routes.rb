Rails.application.routes.draw do
  root controller: :bookings, action: :index
  resources :bookings, only: [:index, :create]
end
