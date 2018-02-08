Rails.application.routes.draw do

  resources :comments
  resources :posts
  resources :groups
  resources :users
  root to: 'static#index'

  get '/feed', to: 'static#feed'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/groups/:id/follow', to: 'groups#follow'

if false #trza pozmieniac zmienne
  get '/courses/:id/unfollow', to: 'courses#unfollow'

resources :students
resources :courses do
  resources :topics, only: [:new, :create, :edit, :update, :show, :destroy] do
    resources :posts, only: [:new, :create, :edit, :update, :show, :destroy]
  end
end
end #if false


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
