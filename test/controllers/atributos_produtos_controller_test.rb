require 'test_helper'

class AtributosProdutosControllerTest < ActionController::TestCase
  setup do
    @atributos_produto = atributos_produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atributos_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atributos_produto" do
    assert_difference('AtributosProduto.count') do
      post :create, atributos_produto: { name: @atributos_produto.name, produto_id: @atributos_produto.produto_id, value: @atributos_produto.value }
    end

    assert_redirected_to atributos_produto_path(assigns(:atributos_produto))
  end

  test "should show atributos_produto" do
    get :show, id: @atributos_produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @atributos_produto
    assert_response :success
  end

  test "should update atributos_produto" do
    patch :update, id: @atributos_produto, atributos_produto: { name: @atributos_produto.name, produto_id: @atributos_produto.produto_id, value: @atributos_produto.value }
    assert_redirected_to atributos_produto_path(assigns(:atributos_produto))
  end

  test "should destroy atributos_produto" do
    assert_difference('AtributosProduto.count', -1) do
      delete :destroy, id: @atributos_produto
    end

    assert_redirected_to atributos_produtos_path
  end
end
