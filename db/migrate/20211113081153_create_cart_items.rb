class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|
      t.belongs_to :cart, null: false, foreign_key: true
      t.bigint :quantity, :default => 0
      t.belongs_to :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
