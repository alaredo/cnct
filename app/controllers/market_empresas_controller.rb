class MarketEmpresasController < ApplicationController
  before_action :set_market_empresa, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @market_empresas = MarketEmpresa.all
    respond_with(@market_empresas)
  end

  def show
    respond_with(@market_empresa)
  end

  def new
    @market_empresa = MarketEmpresa.new
    @emp_id = session[:emp_id]
    respond_with(@market_empresa)
  end

  def edit
    @emp_id = session[:emp_id]
  end

  def create
    @market_empresa = MarketEmpresa.new(market_empresa_params)
    @market_empresa.save
    respond_with(@market_empresa)
  end

  def update
    @market_empresa.update(market_empresa_params)
    respond_with(@market_empresa)
  end

  def destroy
    @market_empresa.destroy
    respond_with(@market_empresa)
  end

  private
    def set_market_empresa
      @market_empresa = MarketEmpresa.find(params[:id])
    end

    def market_empresa_params
      params.require(:market_empresa).permit(:marketPlace_id, :empresa_id, :url, :user, :password, :token, :intervaloEstoque, :intervaloPedidos)
    end
end
