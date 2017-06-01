require 'test_helper'

class MarketPlacesControllerTest < ActionController::TestCase
  setup do
    @market_place = market_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:market_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create market_place" do
    assert_difference('MarketPlace.count') do
      post :create, market_place: { nome: @market_place.nome, url: @market_place.url }
    end

    assert_redirected_to market_place_path(assigns(:market_place))
  end

  test "should show market_place" do
    get :show, id: @market_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @market_place
    assert_response :success
  end

  test "should update market_place" do
    patch :update, id: @market_place, market_place: { nome: @market_place.nome, url: @market_place.url }
    assert_redirected_to market_place_path(assigns(:market_place))
  end

  test "should destroy market_place" do
    assert_difference('MarketPlace.count', -1) do
      delete :destroy, id: @market_place
    end

    assert_redirected_to market_places_path
  end
end
