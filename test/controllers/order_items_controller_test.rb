require 'test_helper'

class OrderItemsControllerTest < ActionController::TestCase
  setup do
    @order_item = order_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_item" do
    assert_difference('OrderItem.count') do
      post :create, order_item: { decimal: @order_item.decimal, freight_id: @order_item.freight_id, giftWrap_id: @order_item.giftWrap_id, name: @order_item.name, sale_price: @order_item.sale_price, sent: @order_item.sent, sku_seller_id: @order_item.sku_seller_id }
    end

    assert_redirected_to order_item_path(assigns(:order_item))
  end

  test "should show order_item" do
    get :show, id: @order_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_item
    assert_response :success
  end

  test "should update order_item" do
    patch :update, id: @order_item, order_item: { decimal: @order_item.decimal, freight_id: @order_item.freight_id, giftWrap_id: @order_item.giftWrap_id, name: @order_item.name, sale_price: @order_item.sale_price, sent: @order_item.sent, sku_seller_id: @order_item.sku_seller_id }
    assert_redirected_to order_item_path(assigns(:order_item))
  end

  test "should destroy order_item" do
    assert_difference('OrderItem.count', -1) do
      delete :destroy, id: @order_item
    end

    assert_redirected_to order_items_path
  end
end
