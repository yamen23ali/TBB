Rails.application.routes.draw do

  #Auth
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :attachments
  resources :reviews
  
  resources :tours do
  	member do
      get 'attractions'
    end
  end

  resources :tourist_attractions do
  	member do
      get 'details'
    end
  end

  resources :tourist_attraction_details 
end
