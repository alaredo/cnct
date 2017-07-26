require 'test_helper'

class TrackingsControllerTest < ActionController::TestCase
  setup do
    @tracking = trackings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trackings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tracking" do
    assert_difference('Tracking.count') do
      post :create, tracking: { carrier_id: @tracking.carrier_id, controlPoint: @tracking.controlPoint, cte: @tracking.cte, description: @tracking.description, invoice_id: @tracking.invoice_id, number: @tracking.number, occurredAt: @tracking.occurredAt, sellerDeliveryId: @tracking.sellerDeliveryId, url: @tracking.url }
    end

    assert_redirected_to tracking_path(assigns(:tracking))
  end

  test "should show tracking" do
    get :show, id: @tracking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tracking
    assert_response :success
  end

  test "should update tracking" do
    patch :update, id: @tracking, tracking: { carrier_id: @tracking.carrier_id, controlPoint: @tracking.controlPoint, cte: @tracking.cte, description: @tracking.description, invoice_id: @tracking.invoice_id, number: @tracking.number, occurredAt: @tracking.occurredAt, sellerDeliveryId: @tracking.sellerDeliveryId, url: @tracking.url }
    assert_redirected_to tracking_path(assigns(:tracking))
  end

  test "should destroy tracking" do
    assert_difference('Tracking.count', -1) do
      delete :destroy, id: @tracking
    end

    assert_redirected_to trackings_path
  end
end
