Rails.application.routes.draw do
   get 'sessions/new'

  resources :users
  resources :roles
  resources :states
  resources :fines
  get '/login', to:'sessions#new'
  post '/login',to:'sessions#create'
  get '/logout',to:'sessions#delete'
  root 'sessions#new'
end
