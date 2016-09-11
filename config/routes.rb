Rails.application.routes.draw do

  apipie
  #Auth
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :users do
    member do
      get 'tours'
    end
  end

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

  resources :cities
  resources :countries
end
