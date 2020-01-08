Rails.application.routes.draw do
  root 'users#home'
  # get  'users/new',   to: 'users#new'
  post 'users/new',   to: 'users#create'
  # get  'users/show',  to: 'users#show'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
