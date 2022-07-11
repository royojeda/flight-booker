Rails.application.routes.draw do
  resources :passengers
  root "flights#index"

  resources :flights
  resources :airports
  resources :bookings
end
