Rails.application.routes.draw do

root 'operators#new'
  resources :criminals do
    resources :crimes, shallow: true 
  end
  resources :operators, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  get '/login', to: 'sessions#new'
  
  get '/confirmed', to: 'sessions#confirmed'
end
