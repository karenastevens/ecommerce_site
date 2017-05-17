Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  get  '/products', to: 'static_pages#products'
  get  '/about',    to: 'static_pages#about'
  get  '/contact',  to: 'static_pages#contact'
  get  '/cart',     to: 'static_pages#cart'
  get  '/checkout', to: 'static_pages#checkout'
end
