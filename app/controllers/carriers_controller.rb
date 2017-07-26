class CarriersController < ApplicationController
  before_action :set_carrier, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @carriers = Carrier.all
    respond_with(@carriers)
  end

  def show
    respond_with(@carrier)
  end

  def new
    @carrier = Carrier.new
    respond_with(@carrier)
  end

  def edit
  end

  def create
    @carrier = Carrier.new(carrier_params)
    @carrier.save
    respond_with(@carrier)
  end

  def update
    @carrier.update(carrier_params)
    respond_with(@carrier)
  end

  def destroy
    @carrier.destroy
    respond_with(@carrier)
  end

  private
    def set_carrier
      @carrier = Carrier.find(params[:id])
    end

    def carrier_params
      params.require(:carrier).permit(:name, :cnpj)
    end
end
