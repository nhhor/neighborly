Rails.application.routes.draw do
  root to: 'home#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  resources :events
  resources :reviews
  resources :users
end
