Rails.application.routes.draw do
  resources :texthints

  resources :corporates, :path => 'corporate'

  resources :bookings
  resources :about
  resources :directions
  resources :faq
  resources :busts
  resources :rooms
  root 'welcome#index'

  resources :jquery do
    collection do
      post :playfile
      post :update_text
      post :clear_hint
      post :custom_message
      post :testing
    end
  end

  resources :countdown
  resources :leaderboard
end
