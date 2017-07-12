class BillingAddressesController < ApplicationController
  before_action :set_billing_address, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @billing_addresses = BillingAddress.all
    respond_with(@billing_addresses)
  end

  def show
    respond_with(@billing_address)
  end

  def new
    @billing_address = BillingAddress.new
    respond_with(@billing_address)
  end

  def edit
  end

  def create
    @billing_address = BillingAddress.new(billing_address_params)
    @billing_address.save
    respond_with(@billing_address)
  end

  def update
    @billing_address.update(billing_address_params)
    respond_with(@billing_address)
  end

  def destroy
    @billing_address.destroy
    respond_with(@billing_address)
  end

  private
    def set_billing_address
      @billing_address = BillingAddress.find(params[:id])
    end

    def billing_address_params
      params.require(:billing_address).permit(:address, :number, :complement, :quarter, :reference, :city, :state, :country_id, :zip_code)
    end
end
