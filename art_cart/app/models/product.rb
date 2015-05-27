class Product < ActiveRecord::Base
    has_many :purchases
    has_many :orders, through: :purchases
    #validate products
    validates :name, presence: true
    validates :price, presence: true
    validates :description, presence: true
    validates :image_url, presence: true
    validates :inventory, presence: true

    def add_cart
      if self.inventory > 1
          self.inventory -=1
          self.save
      else
          self.destroy
      end
    end
end
