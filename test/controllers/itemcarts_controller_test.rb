require "test_helper"

class ItemcartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itemcart = itemcarts(:one)
  end

  test "should get index" do
    get itemcarts_url
    assert_response :success
  end

  test "should get new" do
    get new_itemcart_url
    assert_response :success
  end

  test "should create itemcart" do
    assert_difference("Itemcart.count") do
      post itemcarts_url, params: { itemcart: { merchant_id: @itemcart.merchant_id, product_id: @itemcart.product_id, qnty: @itemcart.qnty, size: @itemcart.size } }
    end

    assert_redirected_to itemcart_url(Itemcart.last)
  end

  test "should show itemcart" do
    get itemcart_url(@itemcart)
    assert_response :success
  end

  test "should get edit" do
    get edit_itemcart_url(@itemcart)
    assert_response :success
  end

  test "should update itemcart" do
    patch itemcart_url(@itemcart), params: { itemcart: { merchant_id: @itemcart.merchant_id, product_id: @itemcart.product_id, qnty: @itemcart.qnty, size: @itemcart.size } }
    assert_redirected_to itemcart_url(@itemcart)
  end

  test "should destroy itemcart" do
    assert_difference("Itemcart.count", -1) do
      delete itemcart_url(@itemcart)
    end

    assert_redirected_to itemcarts_url
  end
end
