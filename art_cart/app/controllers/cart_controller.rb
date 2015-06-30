class CartController < ApplicationController

  def show
    @cart = Cart.new(current_user)
    @contents = @cart.show_contents_formatted
  end

  def add_product
    @cart = Cart.new(current_user)
    @product = Product.find(params[:id])
    @cart.add(@product)
    redirect_to request.referer
  end

  def remove_product
    @cart = Cart.new(current_user)
    @product = Product.find(params[:id])
    @cart.remove(@product)
    redirect_to "/cart/show"
  end

  def buy_products
    @cart = Cart.new(current_user)
    @cart.buy_products
    redirect_to "/cart/confirmation"
  end

  def empty
    @cart = Cart.new(current_user)
    @cart.empty
    redirect_to "/cart/show"
  end

  def confirmation
  end

end





