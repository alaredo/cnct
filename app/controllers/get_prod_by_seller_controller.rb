class GetProdBySellerController < ApplicationController
  before_action :set_seller, only: [:show, :edit]
  
  def show
    
  end
  
  def edit 
    @cnova = Cnova.new
    @response = @cnova.getSellerItens(@loja.code)
    
  end
  
  private
  def set_seller
    @loja = Loja.find(params[:id])
    
  end 
end
