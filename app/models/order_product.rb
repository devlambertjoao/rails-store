class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product

  def self.destroy_by_product(product)
    where(product_id: product.id).each { |order_product| order_product.delete }
  end
end
