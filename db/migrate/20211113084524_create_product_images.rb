class CreateProductImages < ActiveRecord::Migration[6.1]
  def change
    create_table :product_images do |t|
      t.string :image_url
      t.belongs_to :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
