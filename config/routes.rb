Rails.application.routes.draw do
  resources :monsters, only: [:index]

  root "monsters#index"
end
