class AtributosProdutosController < ApplicationController
  before_action :set_atributos_produto, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @atributos_produtos = AtributosProduto.all
    respond_with(@atributos_produtos)
  end

  def show
    @produto_id = session[:produto_id]
    respond_with(@atributos_produto)
  end

  def new
    @produto_id = session[:produto_id]
    @atributos_produto = AtributosProduto.new
    respond_with(@atributos_produto)
  end

  def edit
    @produto_id = session[:produto_id]
  end

  def create
    @atributos_produto = AtributosProduto.new(atributos_produto_params)
    @atributos_produto.save
    respond_with(@atributos_produto)
  end

  def update
    @produto_id = session[:produto_id]
    @atributos_produto.update(atributos_produto_params)
    respond_with(@atributos_produto)
  end

  def destroy
    @atributos_produto.destroy
    respond_with(@atributos_produto)
  end

  private
    def set_atributos_produto
      @atributos_produto = AtributosProduto.find(params[:id])
    end

    def atributos_produto_params
      params.require(:atributos_produto).permit(:produto_id, :name, :value)
    end
end
