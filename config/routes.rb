Rails.application.routes.draw do
  resources :booking_transactions
  root "flights#index"

  resources :flights
  resources :airports
  resources :bookings
  resources :passengers
end
