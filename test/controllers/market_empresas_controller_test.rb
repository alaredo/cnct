require 'test_helper'

class MarketEmpresasControllerTest < ActionController::TestCase
  setup do
    @market_empresa = market_empresas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:market_empresas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create market_empresa" do
    assert_difference('MarketEmpresa.count') do
      post :create, market_empresa: { empresa_id: @market_empresa.empresa_id, intervaloEstoque: @market_empresa.intervaloEstoque, intervaloPedidos: @market_empresa.intervaloPedidos, marketPlace_id: @market_empresa.marketPlace_id, password: @market_empresa.password, token: @market_empresa.token, url: @market_empresa.url, user: @market_empresa.user }
    end

    assert_redirected_to market_empresa_path(assigns(:market_empresa))
  end

  test "should show market_empresa" do
    get :show, id: @market_empresa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @market_empresa
    assert_response :success
  end

  test "should update market_empresa" do
    patch :update, id: @market_empresa, market_empresa: { empresa_id: @market_empresa.empresa_id, intervaloEstoque: @market_empresa.intervaloEstoque, intervaloPedidos: @market_empresa.intervaloPedidos, marketPlace_id: @market_empresa.marketPlace_id, password: @market_empresa.password, token: @market_empresa.token, url: @market_empresa.url, user: @market_empresa.user }
    assert_redirected_to market_empresa_path(assigns(:market_empresa))
  end

  test "should destroy market_empresa" do
    assert_difference('MarketEmpresa.count', -1) do
      delete :destroy, id: @market_empresa
    end

    assert_redirected_to market_empresas_path
  end
end
