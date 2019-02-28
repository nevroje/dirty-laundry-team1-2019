Rails.application.routes.draw do
  get 'bookings/index'
    root controller: :bookings, action: :index
end
