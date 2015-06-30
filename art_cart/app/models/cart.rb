require 'table_print'

class Cart

  attr_accessor :user, :order, :products, :purchases

  def initialize(user = current_user)
    @user = user
    if order = @user.cart
      @order = order
    else
      @order = @user.orders.create
    end
    @products = @order.products
    @purchases = @order.purchases
  end

  def add(product)
    if product.add_to_cart
      @products << product
    end
  end

  def remove(product)
    products = @order.products.where(id: product.id)
    if products.length > 0
      n = products.length
      n.times { product.remove_from_cart }
      @products.delete(product)
    end
  end

  def show_contents_formatted
    @products.uniq.map do |product|
      { product: product, quantity: @products.where(id: product.id).count }
    end
  end

  def buy_products
    if @products.length > 0
      @order.complete = true
      @order = @user.orders.create
      @products = @order.products
      @purchases = @order.purchases
    end
  end

  def empty
    self.show_contents_formatted.each do |product_hash|
      product_hash[:quantity].times { product_hash[:product].remove_from_cart }
    end
    @products.delete_all
  end

end
