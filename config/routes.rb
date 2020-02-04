Rails.application.routes.draw do
  root to: 'events#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/events' => 'events#index'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'


  # ~ONE~
  get '/signin' => 'sessions#new'

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
