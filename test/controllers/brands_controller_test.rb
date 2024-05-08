require "test_helper"

class BrandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brand = brands(:one)
  end

  test "should get index" do
    get brands_url
    assert_response :success
  end

  test "should get new" do
    get new_brand_url
    assert_response :success
  end

  test "should create brand" do
    assert_difference("Brand.count") do
      post brands_url, params: { brand: { brand_name: @brand.brand_name, company_name: @brand.company_name, domestic_country: @brand.domestic_country, end_year: @brand.end_year, origin_country: @brand.origin_country, start_year: @brand.start_year } }
    end

    assert_redirected_to brand_url(Brand.last)
  end

  test "should show brand" do
    get brand_url(@brand)
    assert_response :success
  end

  test "should get edit" do
    get edit_brand_url(@brand)
    assert_response :success
  end

  test "should update brand" do
    patch brand_url(@brand), params: { brand: { brand_name: @brand.brand_name, company_name: @brand.company_name, domestic_country: @brand.domestic_country, end_year: @brand.end_year, origin_country: @brand.origin_country, start_year: @brand.start_year } }
    assert_redirected_to brand_url(@brand)
  end

  test "should destroy brand" do
    assert_difference("Brand.count", -1) do
      delete brand_url(@brand)
    end

    assert_redirected_to brands_url
  end
end
