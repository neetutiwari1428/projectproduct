require "application_system_test_case"

class ItemcartsTest < ApplicationSystemTestCase
  setup do
    @itemcart = itemcarts(:one)
  end

  test "visiting the index" do
    visit itemcarts_url
    assert_selector "h1", text: "Itemcarts"
  end

  test "should create itemcart" do
    visit itemcarts_url
    click_on "New itemcart"

    fill_in "Merchant", with: @itemcart.merchant_id
    fill_in "Product", with: @itemcart.product_id
    fill_in "Qnty", with: @itemcart.qnty
    fill_in "Size", with: @itemcart.size
    click_on "Create Itemcart"

    assert_text "Itemcart was successfully created"
    click_on "Back"
  end

  test "should update Itemcart" do
    visit itemcart_url(@itemcart)
    click_on "Edit this itemcart", match: :first

    fill_in "Merchant", with: @itemcart.merchant_id
    fill_in "Product", with: @itemcart.product_id
    fill_in "Qnty", with: @itemcart.qnty
    fill_in "Size", with: @itemcart.size
    click_on "Update Itemcart"

    assert_text "Itemcart was successfully updated"
    click_on "Back"
  end

  test "should destroy Itemcart" do
    visit itemcart_url(@itemcart)
    click_on "Destroy this itemcart", match: :first

    assert_text "Itemcart was successfully destroyed"
  end
end
