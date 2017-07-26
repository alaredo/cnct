class SendOrderController < ApplicationController
  before_action :set_send_order, only: [:show, :edit]
  
  def show
     
  end
  
  def edit
     @msg = "Este pedido já foi enviado..."
     
       @msg = "\o/" 
       @cnova = Cnova.new
       @order = Order.find(1)
       @resp = @cnova.sendOrder(@order)
       
       #@response = @cnova.cadProduto(@produto)
       
       #if @response.code === "200"
       #  @msg = @response.code + " - " + @response.message
       #  @produtoMarketPlace.status = "Enviado"
       #  @produtoMarketPlace.save
       #else
       #  @msg = @response.code + " - " + @response.message
       #end
       
      
  end
  
private
  def set_send_order
      @order = Order.find(1)
  end    
end
