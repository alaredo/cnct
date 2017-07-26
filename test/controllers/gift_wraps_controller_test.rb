require 'test_helper'

class GiftWrapsControllerTest < ActionController::TestCase
  setup do
    @gift_wrap = gift_wraps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gift_wraps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gift_wrap" do
    assert_difference('GiftWrap.count') do
      post :create, gift_wrap: { available: @gift_wrap.available, message_support: @gift_wrap.message_support, value: @gift_wrap.value }
    end

    assert_redirected_to gift_wrap_path(assigns(:gift_wrap))
  end

  test "should show gift_wrap" do
    get :show, id: @gift_wrap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gift_wrap
    assert_response :success
  end

  test "should update gift_wrap" do
    patch :update, id: @gift_wrap, gift_wrap: { available: @gift_wrap.available, message_support: @gift_wrap.message_support, value: @gift_wrap.value }
    assert_redirected_to gift_wrap_path(assigns(:gift_wrap))
  end

  test "should destroy gift_wrap" do
    assert_difference('GiftWrap.count', -1) do
      delete :destroy, id: @gift_wrap
    end

    assert_redirected_to gift_wraps_path
  end
end
