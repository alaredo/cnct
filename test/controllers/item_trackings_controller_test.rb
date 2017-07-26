require 'test_helper'

class ItemTrackingsControllerTest < ActionController::TestCase
  setup do
    @item_tracking = item_trackings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_trackings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_tracking" do
    assert_difference('ItemTracking.count') do
      post :create, item_tracking: { href: @item_tracking.href, tracking_id: @item_tracking.tracking_id }
    end

    assert_redirected_to item_tracking_path(assigns(:item_tracking))
  end

  test "should show item_tracking" do
    get :show, id: @item_tracking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_tracking
    assert_response :success
  end

  test "should update item_tracking" do
    patch :update, id: @item_tracking, item_tracking: { href: @item_tracking.href, tracking_id: @item_tracking.tracking_id }
    assert_redirected_to item_tracking_path(assigns(:item_tracking))
  end

  test "should destroy item_tracking" do
    assert_difference('ItemTracking.count', -1) do
      delete :destroy, id: @item_tracking
    end

    assert_redirected_to item_trackings_path
  end
end
