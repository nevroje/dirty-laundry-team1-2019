Rails.application.routes.draw do
  resources :bookings
    root controller: :bookings, action: :index
end
