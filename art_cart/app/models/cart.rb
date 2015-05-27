class Cart

  attr_accessor :user, :order, :products, :purchases

  # def initialize()
  # end

  def add(product)
    if product.add_to_cart
      products << product
    end
  end


