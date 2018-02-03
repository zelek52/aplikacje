Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/groups/:id/follow', to: 'groups#follow'

  resources :comments
  resources :posts
  resources :groups
  resources :users
  root to: 'static#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
