class CreateBrands < ActiveRecord::Migration[7.1]
  def change
    create_table :brands do |t|
      t.string :brand_name
      t.string :company_name
      t.integer :start_year
      t.integer :end_year
      t.string :origin_country
      t.string :domestic_country

      t.timestamps
    end
  end
end
