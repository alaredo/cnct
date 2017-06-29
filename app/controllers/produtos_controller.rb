class ProdutosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_produto, only: [:show, :edit, :update, :destroy]

  # GET /produtos
  # GET /produtos.json
  def index
    @emp_id = session[:current_empresa_id]
    @produtos = Produto.where("empresa_id=?", @emp_id)
  end

  # GET /produtos/1
  # GET /produtos/1.json
  def show
   
  end

  # GET /produtos/new
  def new
    @produto = Produto.new
    @emp_id = session[:current_empresa_id]
  end

  # GET /produtos/1/edit
  def edit
    @emp_id = session[:current_empresa_id]
    session[:produto_id] = params[:id]
    @prod_id = params[:id]
    @atributos_produto = AtributosProduto.where("produto_id=?",params[:id])
    
    #sqlJoin =  "INNER JOIN market_empresas ON market_empresas.marketPlace_id = market_places.id 
    #            INNER JOIN produto_market_places ON (produto_market_places.marketEmpresa_id = market_empresas.id) and (produto_market_places.produto_id = " + @prod_id.to_str + ")"
                
    
    #@markets_produto = MarketPlace.joins(sqlJoin ).select("market_places.*, produto_market_places.*")
  
    sqlJoin =  "INNER JOIN market_empresas ON market_empresas.id = produto_market_places.marketEmpresa_id 
                INNER JOIN market_places ON (market_places.id = market_empresas.marketPlace_id)"
    @markets_produto = ProdutoMarketPlace.joins(sqlJoin).where("produto_market_places.produto_id = " + params[:id].to_str).select( "market_places.*, produto_market_places.*")
  
  
  end

  # POST /produtos
  # POST /produtos.json
  def create
    @produto = Produto.new(produto_params)

    respond_to do |format|
      if @produto.save
        format.html { redirect_to @produto, notice: 'Produto was successfully created.' }
        format.json { render :show, status: :created, location: @produto }
      else
        format.html { render :new }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produtos/1
  # PATCH/PUT /produtos/1.json
  def update
    respond_to do |format|
      if @produto.update(produto_params)
        format.html { redirect_to @produto, notice: 'Produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @produto }
      else
        format.html { render :edit }
        format.json { render json: @produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produtos/1
  # DELETE /produtos/1.json
  def destroy
    @produto.destroy
    respond_to do |format|
      format.html { redirect_to produtos_url, notice: 'Produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto
      @produto = Produto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produto_params
      params.require(:produto).permit(  :empresa_id, 
                                        :descricao, 
                                        :valor, 
                                        :saldo, 
                                        :imagem1, 
                                        :imagem2, 
                                        :imagem3, 
                                        :imagem4, 
                                        :video1, 
                                        :video2,
                                        :sku_seller_id,
                                        :product_seller_id,
                                        :title,
                                        :brand,
                                        :gtin,
                                        :categories,
                                        :weight,
                                        :lenght,
                                        :width,
                                        :height,
                                        :valorOferta)
    end
end
