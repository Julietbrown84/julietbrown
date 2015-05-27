Rails.application.routes.draw do
 root 'pages#home'

   # devise_for :users
  get '/cart/show', to: 'cart#show'
  patch '/cart/products/:id/add', to: 'cart#add_product', as: 'cart_products_add'

  resources :products, only: [:index, :show]
end
