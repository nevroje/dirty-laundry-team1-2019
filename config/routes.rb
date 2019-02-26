Rails.application.routes.draw do
    root controller: :calendar, action: :index
    resources :calendar, only: [:index]
end
