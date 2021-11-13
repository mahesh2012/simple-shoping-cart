class Product < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :product_images, dependent: :destroy
  accepts_nested_attributes_for :product_images, allow_destroy: true
  before_save :set_price

  def set_price
    self.price = rand(100..1000)
  end
end
