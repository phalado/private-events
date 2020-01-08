Rails.application.routes.draw do
  get 'sessions/login'
  root 'users#home'
  # get  'users/new',   to: 'users#new'
  post 'users/new',   to: 'users#create'
  post 'sessions/login', to: 'sessions#create'
  # get  'users/show',  to: 'users#show'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
