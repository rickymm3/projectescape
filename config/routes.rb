Rails.application.routes.draw do
  resources :bookings
  resources :about
  resources :team
  resources :directions

  root 'welcome#index'
end
