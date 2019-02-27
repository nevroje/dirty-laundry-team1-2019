Rails.application.routes.draw do
  resources :forecasts
    root controller: :booking, action: :index
    resources :booking, only: [:index]
end
