class Order < ApplicationRecord
  belongs_to :cart

  enum pay_method: ["COD", "Online Payment", "Card", "UPI"]
end
