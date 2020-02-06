Rails.application.routes.draw do

  root to: 'home#index'

  get '/home' => 'home#index'
  get '/signup' => 'users#new'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  post '/users' => 'users#create'

  get '/events' => 'events#index'


  # ~ONE~

  resources :events do
    member do
      post :add

    end
  end

  resources :users do
    member do
      post :remove
    end
    resources :reviews

  end
end
