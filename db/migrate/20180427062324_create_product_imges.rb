class CreateProductImges < ActiveRecord::Migration[5.1]
  def change
    create_table :product_imges do |t|
      t.belongs_to :product
      t.integer :weight, default: 0
      t.attachment :image
      t.timestamps
    end
  end
end