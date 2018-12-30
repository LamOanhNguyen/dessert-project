class OrderDetail < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :product_id, presence: true
  validates :order_id, presence: true
  validates :quantity, presence: true,
    numericality: {greater_than_or_equal_to: Settings.validation.quantity}
  validates :price, presence: true, numericality: true

  scope :number_of_product, -> do
    left_outer_joins(:product)
    .group("products.id")
    .sum(:quantity)
  end
end
