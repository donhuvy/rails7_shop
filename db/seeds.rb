# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Brand.destroy_all

Brand.create!(
    [
        {
            "id": 1,
            "brand_name": "Olym Pianus",
            "company_name": "Olym Pianus",
            "start_year": 2015,
            "origin_country": "China",
            "created_at": "2024-05-08T09:42:56.018Z",
            "updated_at": "2024-05-08T09:42:56.018Z"
        }
    ]
)
p "Đã thêm #{Brand.count} nhãn hiệu."

Product.destroy_all
Product.create!(
    [
        {
            product_name: "Cốc giữ nhiệt NTT DATA VDS",
            product_type: true,
            size_width: 6,
            size_height: 18,
            size_length: 6,
            unit_of_size: "cm",
            manufactured_date: "2022-01-08",
            brand_id: 1,
            color: "Màu kim loại inox",
            sku: "COC_GIU_NHIET_NTT_DATA_VDS"
        },
        {
            product_name: "Sổ tay NTT DATA VDS",
            product_type: true,
            size_width: 1,
            size_height: 18,
            size_length: 9,
            unit_of_size: "cm",
            manufactured_date: "2022-01-09",
            brand_id: 1,
            color: "Màu xanh - trắng",
            sku: "SO_GHI_CHU_NTT_DATA_VDS"
        }
    ]
)

p "Đã thêm #{Product.count} sản phẩm."

# rails db:seed