class SendProdController < ApplicationController
  before_action :set_send_prod, only: [:show, :edit]
  
  def show
     
  end
  
  def edit
     @msg = "Este produto já foi enviado..."
     if @produtoMarketPlace.status === "novo"
       @msg = "Erro" 
       @cnova = Cnova.new
       @response = @cnova.cadProduto(@produto)
       
       if @response.code === "200"
         @msg = @response.code + " - " + @response.message
         @produtoMarketPlace.status = "Enviado"
         @produtoMarketPlace.save
       else
         @msg = @response.code + " - " + @response.message
       end
       #@cnova.loadProdutos
       #@cnova.getSellerItens   
     end 
  end
  
private
  def set_send_prod
      @produtoMarketPlace = ProdutoMarketPlace.find(params[:id])
      @marketPlace = @produtoMarketPlace.marketEmpresa.marketPlace
      @produto = @produtoMarketPlace.produto
  end
  
end
