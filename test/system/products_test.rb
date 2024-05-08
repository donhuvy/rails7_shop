require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "New product"

    fill_in "Brand", with: @product.brand_id
    fill_in "Color", with: @product.color
    fill_in "Experied date", with: @product.experied_date
    fill_in "Manufactured date", with: @product.manufactured_date
    fill_in "Product name", with: @product.product_name
    check "Product type" if @product.product_type
    fill_in "Size height", with: @product.size_height
    fill_in "Size length", with: @product.size_length
    fill_in "Size width", with: @product.size_width
    fill_in "Sku", with: @product.sku
    fill_in "Unit of size", with: @product.unit_of_size
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Brand", with: @product.brand_id
    fill_in "Color", with: @product.color
    fill_in "Experied date", with: @product.experied_date
    fill_in "Manufactured date", with: @product.manufactured_date
    fill_in "Product name", with: @product.product_name
    check "Product type" if @product.product_type
    fill_in "Size height", with: @product.size_height
    fill_in "Size length", with: @product.size_length
    fill_in "Size width", with: @product.size_width
    fill_in "Sku", with: @product.sku
    fill_in "Unit of size", with: @product.unit_of_size
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end
