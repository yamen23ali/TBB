Rails.application.routes.draw do

  #Auth
  mount_devise_token_auth_for 'User', at: 'auth'
end
