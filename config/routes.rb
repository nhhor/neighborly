Rails.application.routes.draw do
  root to: 'home#index'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  resources :events do
    member do
      post :add

    end

  end
  resources :users do
    resources :reviews

  end
end
