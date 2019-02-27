Rails.application.routes.draw do
    root controller: :booking, action: :index
    resources :booking, only: [:index]
end
