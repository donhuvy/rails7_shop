class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.boolean :product_type
      t.decimal :size_width
      t.decimal :size_height
      t.decimal :size_length
      t.string :unit_of_size
      t.date :manufactured_date
      t.date :experied_date
      t.integer :brand_id
      t.string :color
      t.string :sku

      t.timestamps
    end
  end
end
