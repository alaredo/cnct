class SendProdController < ApplicationController
  before_action :set_send_prod, only: [:show, :edit]
  
  def show
     
  end
  
  def edit
    
    
    
  end
  
private
  def set_send_prod
      @produtoMarketPlace = ProdutoMarketPlace.find(params[:id])
      @produto = @produtoMarketPlace.produto
  end
  
end
