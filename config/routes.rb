Rails.application.routes.draw do
  root to: 'tasks#index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  #get 'tasks#index'

  get 'signup', to: 'users#new'
  resources :users, only: [:show, :new, :create]
  resources :tasks
end
