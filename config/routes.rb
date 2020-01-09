Rails.application.routes.draw do
  get 'events/create'
  #get 'events/show'
  get 'events/index'
  get 'sessions/login'
  root 'users#home'
  post 'events/new', to:'events#create'
  # get  'users/new',   to: 'users#new'
  post 'users/new',   to: 'users#create'
  post 'sessions/login', to: 'sessions#create'
  # get  'users/show',  to: 'users#show'
  resources :users
  resources :sessions
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
