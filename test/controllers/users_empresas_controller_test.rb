require 'test_helper'

class UsersEmpresasControllerTest < ActionController::TestCase
  setup do
    @users_empresa = users_empresas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_empresas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_empresa" do
    assert_difference('UsersEmpresa.count') do
      post :create, users_empresa: { dtCriacao: @users_empresa.dtCriacao, empresa_id: @users_empresa.empresa_id, user_id: @users_empresa.user_id }
    end

    assert_redirected_to users_empresa_path(assigns(:users_empresa))
  end

  test "should show users_empresa" do
    get :show, id: @users_empresa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_empresa
    assert_response :success
  end

  test "should update users_empresa" do
    patch :update, id: @users_empresa, users_empresa: { dtCriacao: @users_empresa.dtCriacao, empresa_id: @users_empresa.empresa_id, user_id: @users_empresa.user_id }
    assert_redirected_to users_empresa_path(assigns(:users_empresa))
  end

  test "should destroy users_empresa" do
    assert_difference('UsersEmpresa.count', -1) do
      delete :destroy, id: @users_empresa
    end

    assert_redirected_to users_empresas_path
  end
end
