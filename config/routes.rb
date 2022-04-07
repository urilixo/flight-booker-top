Rails.application.routes.draw do
  resources :flights
  resources :bookings, only: %i[new create show]
  root 'flights#index'
end
