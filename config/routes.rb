Rails.application.routes.draw do
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
  resources :countdown1
  resources :countdown2
  resources :countdown10
  resources :countdown15

end
