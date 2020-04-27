Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'static_pages/home'

  get 'static_pages/help'
 
  get 'static_pages/about'
 
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
end
