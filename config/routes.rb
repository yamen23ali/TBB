Rails.application.routes.draw do

  #Auth
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :attachments
  resources :reviews
  
  resources :tours do
  	member do
      get 'attractions'
      get 'reviews'
    end
  end

  resources :attractions do
  	member do
      get 'details'
    end
  end

  resources :attraction_details 
end
