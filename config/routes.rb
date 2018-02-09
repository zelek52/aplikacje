Rails.application.routes.draw do

  resources :comments
  resources :posts
  resources :users
  resources :groups do
    resources :posts, only: [:new, :create, :edit, :update, :show, :destroy] do
      resources :comments, only: [:new, :create, :edit, :update, :show, :destroy]
    end
  end

  root to: 'static#index'

  get '/feed', to: 'static#feed'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/groups/:id/follow', to: 'groups#follow'
  get '/groups/:id/unfollow', to: 'groups#unfollow'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
