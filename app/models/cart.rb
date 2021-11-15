class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :orders, dependent: :destroy
  def as_json(**options)
    unless options.has_key? :include
      options.merge!(include: [:cart_items])
    end
    super(options)
  end
end
