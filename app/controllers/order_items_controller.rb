class OrderItemsController < ApplicationController
  before_action :set_order_item, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @order_items = OrderItem.all
    respond_with(@order_items)
  end

  def show
    respond_with(@order_item)
  end

  def new
    @order_item = OrderItem.new
    @order_id = session[:order_id]
    respond_with(@order_item)
  end

  def edit
  end

  def create
    @order_item = OrderItem.new(order_item_params)
    @order_item.save
    respond_with(@order_item)
  end

  def update
    @order_item.update(order_item_params)
    respond_with(@order_item)
  end

  def destroy
    @order_item.destroy
    respond_with(@order_item)
  end

  private
    def set_order_item
      @order_item = OrderItem.find(params[:id])
    end

    def order_item_params
      params.require(:order_item).permit(:sku_seller_id, :name, :sale_price, :sent, :freight_id, :giftWrap_id, :order_id, :quantity)
    end
end
