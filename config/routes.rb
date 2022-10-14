Rails.application.routes.draw do
  resources :monsters, only: [:index, :show]
  resources :tweets, exlude: [:edit, :update, :destroy]
  root "tweets#index"
  resolve("new_tweet_path") {route_for(:new)}
end
