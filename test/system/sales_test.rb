require "application_system_test_case"

class SalesTest < ApplicationSystemTestCase
  setup do
    @sale = sales(:one)
  end

  test "visiting the index" do
    visit sales_url
    assert_selector "h1", text: "Sales"
  end

  test "should create sale" do
    visit sales_url
    click_on "New sale"

    fill_in "Afm", with: @sale.afm
    fill_in "City", with: @sale.city
    fill_in "Customer code", with: @sale.customer_code
    fill_in "Date", with: @sale.date
    fill_in "Descr", with: @sale.descr
    fill_in "Doc type", with: @sale.doc_type
    fill_in "Name", with: @sale.name
    fill_in "Ppy", with: @sale.ppy
    fill_in "Quant", with: @sale.quant
    fill_in "Tel", with: @sale.tel
    fill_in "Value", with: @sale.value
    fill_in "Zip", with: @sale.zip
    click_on "Create Sale"

    assert_text "Sale was successfully created"
    click_on "Back"
  end

  test "should update Sale" do
    visit sale_url(@sale)
    click_on "Edit this sale", match: :first

    fill_in "Afm", with: @sale.afm
    fill_in "City", with: @sale.city
    fill_in "Customer code", with: @sale.customer_code
    fill_in "Date", with: @sale.date
    fill_in "Descr", with: @sale.descr
    fill_in "Doc type", with: @sale.doc_type
    fill_in "Name", with: @sale.name
    fill_in "Ppy", with: @sale.ppy
    fill_in "Quant", with: @sale.quant
    fill_in "Tel", with: @sale.tel
    fill_in "Value", with: @sale.value
    fill_in "Zip", with: @sale.zip
    click_on "Update Sale"

    assert_text "Sale was successfully updated"
    click_on "Back"
  end

  test "should destroy Sale" do
    visit sale_url(@sale)
    click_on "Destroy this sale", match: :first

    assert_text "Sale was successfully destroyed"
  end
end
