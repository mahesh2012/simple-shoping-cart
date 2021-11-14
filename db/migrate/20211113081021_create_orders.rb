class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.belongs_to :cart, null: false, foreign_key: true
      t.string :email
      t.string :address
      t.string :phone
      t.bigint :pay_method, :default => 0

      t.timestamps
    end
  end
end
