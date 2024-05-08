require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference("Product.count") do
      post products_url, params: { product: { brand_id: @product.brand_id, color: @product.color, experied_date: @product.experied_date, manufactured_date: @product.manufactured_date, product_name: @product.product_name, product_type: @product.product_type, size_height: @product.size_height, size_length: @product.size_length, size_width: @product.size_width, sku: @product.sku, unit_of_size: @product.unit_of_size } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { brand_id: @product.brand_id, color: @product.color, experied_date: @product.experied_date, manufactured_date: @product.manufactured_date, product_name: @product.product_name, product_type: @product.product_type, size_height: @product.size_height, size_length: @product.size_length, size_width: @product.size_width, sku: @product.sku, unit_of_size: @product.unit_of_size } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference("Product.count", -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
