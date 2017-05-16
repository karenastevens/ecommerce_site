Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/products'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/cart'

  get 'static_pages/checkout'

  root 'application#hello'
end
