class GetProdByIdController < ApplicationController
  before_action :set_produto, only: [:show, :edit]
  
  def show
    
  end
  
  def edit
    
  end
  
  private 
  def set_produto
    @produto = Produto.find(params[:id])
  end
  
end
