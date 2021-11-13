class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :producty
  belongs_to :order
end
