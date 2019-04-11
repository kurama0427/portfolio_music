Rails.application.routes.draw do
  get 'sessions/new'
  root "pages#home"
  get '/signup', to:'users#new'
  get '/home',   to:'pages#home'
  post '/retrieval/:word', to:'pages#retrieval'
  post '/beginner',  to: 'static_pages#beginner'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get   '/song_index', to: 'songs#song_index'
  post '/index',  to: 'songs#index'
  resources :users
  resources :microposts,          only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
