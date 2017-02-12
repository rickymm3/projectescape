Rails.application.routes.draw do
  resources :texthint2s

  resources :texthints

  resources :corporates, :path => 'corporate'

  resources :bookings
  resources :about
  resources :directions
  resources :faq
  resources :busts
  resources :rooms
  root 'welcome#index'
  resources :parties

  resources :heist do
    collection do
      post :playfile
      post :update_text
      post :clear_hint
      post :custom_message
      post :testing
    end
  end

  resources :wizard do
    collection do
      post :playfile
      post :update_text
      post :clear_hint
      post :custom_message
      post :testing
    end
  end

  resources :countdown
  resources :wizardcountdown
  resources :leaderboard
end
