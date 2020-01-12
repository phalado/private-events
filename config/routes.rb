Rails.application.routes.draw do
  root 'sessions#login'
  get  'events/index'
  get  'sessions/login'
  post 'users/new',      to: 'users#create'
  post 'events/new',     to: 'events#create'
  post 'sessions/login', to: 'sessions#create'
  resources :users
  resources :sessions
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
