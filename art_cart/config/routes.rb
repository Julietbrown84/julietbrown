Rails.application.routes.draw do
 root 'products#index'


devise_for :users
  get '/cart/show', to: 'cart#show'
  patch '/cart/products/:id/add', to: 'cart#add_product', as: 'cart_products_add'
  patch '/cart/products/:id/remove', to: 'cart#remove_product', as: 'cart_products_remove'
  patch '/cart/products/buy', to: 'cart#buy_products'
  patch '/cart/empty', to: 'cart#empty'
  get '/cart/confirmation', to: 'cart#confirmation'
  resources :products, only: [:index, :show]

end
