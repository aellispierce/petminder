Rails.application.routes.draw do
  resources :pets
  resources :tasks
  resources :users
  get 'sessions/new'
  post 'sessions/create'
  get 'sessions/logout'

  root 'pets#index'

end
