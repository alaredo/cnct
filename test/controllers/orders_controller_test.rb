require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { billingAddress_id: @order.billingAddress_id, customer_id: @order.customer_id, freight_id: @order.freight_id, order_site_id: @order.order_site_id, payment_type: @order.payment_type, purcharsed_at: @order.purcharsed_at, seller_id: @order.seller_id, shippingAddress_id: @order.shippingAddress_id, site: @order.site, status: @order.status, total_amount: @order.total_amount, total_discount_amount: @order.total_discount_amount, updated_at: @order.updated_at }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { billingAddress_id: @order.billingAddress_id, customer_id: @order.customer_id, freight_id: @order.freight_id, order_site_id: @order.order_site_id, payment_type: @order.payment_type, purcharsed_at: @order.purcharsed_at, seller_id: @order.seller_id, shippingAddress_id: @order.shippingAddress_id, site: @order.site, status: @order.status, total_amount: @order.total_amount, total_discount_amount: @order.total_discount_amount, updated_at: @order.updated_at }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
