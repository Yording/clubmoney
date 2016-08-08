Rails.application.routes.draw do
  # get "/users/login/:user_name",to:'users#login'

  resources :payments
  resources :contributes
  resources :fines
  resources :loans
  resources :events
  resources :states
  resources :users
  resources :roles
  resources :tokens
  root 'tokens#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
