require 'test_helper'

class ProdutoMarketPlacesControllerTest < ActionController::TestCase
  setup do
    @produto_market_place = produto_market_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produto_market_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produto_market_place" do
    assert_difference('ProdutoMarketPlace.count') do
      post :create, produto_market_place: { marketEmpresa_id: @produto_market_place.marketEmpresa_id, produto_id: @produto_market_place.produto_id, status: @produto_market_place.status, valorDe: @produto_market_place.valorDe, valorPor: @produto_market_place.valorPor }
    end

    assert_redirected_to produto_market_place_path(assigns(:produto_market_place))
  end

  test "should show produto_market_place" do
    get :show, id: @produto_market_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produto_market_place
    assert_response :success
  end

  test "should update produto_market_place" do
    patch :update, id: @produto_market_place, produto_market_place: { marketEmpresa_id: @produto_market_place.marketEmpresa_id, produto_id: @produto_market_place.produto_id, status: @produto_market_place.status, valorDe: @produto_market_place.valorDe, valorPor: @produto_market_place.valorPor }
    assert_redirected_to produto_market_place_path(assigns(:produto_market_place))
  end

  test "should destroy produto_market_place" do
    assert_difference('ProdutoMarketPlace.count', -1) do
      delete :destroy, id: @produto_market_place
    end

    assert_redirected_to produto_market_places_path
  end
end
