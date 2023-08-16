Rails.application.routes.draw do
  resources :bookings

  namespace :admin do
    resources :bookings
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "bookings#new"
end
