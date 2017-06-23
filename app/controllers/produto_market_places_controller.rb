class ProdutoMarketPlacesController < ApplicationController
  before_action :set_produto_market_place, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @produto_market_places = ProdutoMarketPlace.all
    respond_with(@produto_market_places)
  end

  def show
    respond_with(@produto_market_place)
  end

  def new
    @produto_id = session[:produto_id]
    @emp_id = session[:current_empresa_id]
    #@markets = MarketPlace.joins(:market_empresas).where('empresa_id' => @emp_id)
    sqlJoin =  "inner join market_empresas 
                 on market_places.id = market_empresas.marketPlace_id 
                 and market_empresas.empresa_id = " + @emp_id.to_s
    @markets = MarketPlace.joins(sqlJoin).select("market_places.nome", "market_empresas.*")
    
    @produto_market_place = ProdutoMarketPlace.new
    respond_with(@produto_market_place)
  end

  def edit
    @produto_id = session[:produto_id]
    @emp_id = session[:current_empresa_id]
    #@markets = MarketPlace.joins(:market_empresas).where('empresa_id' => @emp_id)
    sqlJoin =  "inner join market_empresas 
                 on market_places.id = market_empresas.marketPlace_id 
                 and market_empresas.empresa_id = " + @emp_id.to_s
    @markets = MarketPlace.joins(sqlJoin)
  end

  def create
    @produto_market_place = ProdutoMarketPlace.new(produto_market_place_params)
    @produto_market_place.save
    respond_with(@produto_market_place)
  end

  def update
    @produto_market_place.update(produto_market_place_params)
    respond_with(@produto_market_place)
  end

  def destroy
    @produto_market_place.destroy
    respond_with(@produto_market_place)
  end

  private
    def set_produto_market_place
      @produto_market_place = ProdutoMarketPlace.find(params[:id])
    end

    def produto_market_place_params
      params.require(:produto_market_place).permit(:produto_id, :marketEmpresa_id, :valorDe, :valorPor)
    end
end
