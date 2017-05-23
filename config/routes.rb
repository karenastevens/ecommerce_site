Rails.application.routes.draw do

  root 'static_pages#home'
  get  '/products', to: 'products#index'
  get  '/about',    to: 'static_pages#about'
  get  '/contact',  to: 'messages#new'
  post '/contact',  to: 'messages#create'
  get  '/cart',     to: 'static_pages#cart'
  get  '/checkout', to: 'static_pages#checkout'
  get  '/login',    to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :messages, only: [:new, :create]
  resources :products
end
