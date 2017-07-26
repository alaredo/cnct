class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @orders = Order.all
    respond_with(@orders)
  end

  def show
    @customer = Customer.find(@order.customer_id)
    @loja = Loja.find(@order.loja_id)
    @billing_address = BillingAddress.find(@order.billingAddress_id)
    @shipping_address = ShippingAddress.find(@order.shippingAddress_id)
    @freight = Freight.find(@order.freight_id)
    @order_items = OrderItem.where("order_id=?", @order.id)
    respond_with(@order)
  end

  def new
    @order = Order.new
    respond_with(@order)
  end

  def edit
    @order_items = OrderItem.where("order_id=?",params[:id])
    session[:order_id] = params[:id]
  end

  def create
    @order = Order.new(order_params)
    @order.save
    respond_with(@order)
  end

  def update
    @order.update(order_params)
    respond_with(@order)
  end

  def destroy
    @order.destroy
    respond_with(@order)
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:order_site_id, :site, :payment_type, :purcharsed_at, :approved_at, :updated_at, :status, :total_amount, :total_discount_amount, :customer_id, :loja_id, :billingAddress_id, :shippingAddress_id, :freight_id)
    end
end
