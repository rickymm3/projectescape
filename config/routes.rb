Rails.application.routes.draw do
  resources :corporates, :path => 'corporate'

  resources :bookings
  resources :about
  resources :team
  resources :directions
  resources :review
  resources :rooms
  root 'welcome#index'

end
