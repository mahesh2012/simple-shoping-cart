class Order < ApplicationRecord
  belongs_to :cart

  enum pay_method: ["COD", "Online Payment", "Card", "UPI"]
  def order_summary
    order_summary_details = self.cart.cart_items.map do|datum|
      {
        product_name: datum.product.name,
        total: (datum.product.price.to_f * datum[:quantity]),
        price: datum.product.price,
        quantity: datum[:quantity]
      }
    end
  end
end
