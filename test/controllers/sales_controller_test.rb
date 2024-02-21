require "test_helper"

class SalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get sales_url
    assert_response :success
  end

  test "should get new" do
    get new_sale_url
    assert_response :success
  end

  test "should create sale" do
    assert_difference("Sale.count") do
      post sales_url, params: { sale: { afm: @sale.afm, city: @sale.city, customer_code: @sale.customer_code, date: @sale.date, descr: @sale.descr, doc_type: @sale.doc_type, name: @sale.name, ppy: @sale.ppy, quant: @sale.quant, tel: @sale.tel, value: @sale.value, zip: @sale.zip } }
    end

    assert_redirected_to sale_url(Sale.last)
  end

  test "should show sale" do
    get sale_url(@sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_sale_url(@sale)
    assert_response :success
  end

  test "should update sale" do
    patch sale_url(@sale), params: { sale: { afm: @sale.afm, city: @sale.city, customer_code: @sale.customer_code, date: @sale.date, descr: @sale.descr, doc_type: @sale.doc_type, name: @sale.name, ppy: @sale.ppy, quant: @sale.quant, tel: @sale.tel, value: @sale.value, zip: @sale.zip } }
    assert_redirected_to sale_url(@sale)
  end

  test "should destroy sale" do
    assert_difference("Sale.count", -1) do
      delete sale_url(@sale)
    end

    assert_redirected_to sales_url
  end
end
